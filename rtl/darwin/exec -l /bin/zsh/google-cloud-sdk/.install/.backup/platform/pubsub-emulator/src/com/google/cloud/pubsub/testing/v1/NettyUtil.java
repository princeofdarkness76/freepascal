// Copyright 2015 Google Inc. All Rights Reserved.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package com.google.cloud.pubsub.testing.v1;

import com.google.cloud.pubsub.testing.v1.PubsubJsonGrpcAdapters.JsonResponse;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.pubsub.v1.PublisherGrpc;
import com.google.pubsub.v1.SubscriberGrpc;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.channel.Channel;
import io.netty.channel.ChannelDuplexHandler;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.handler.codec.http.DefaultFullHttpResponse;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.handler.codec.http2.Http2CodecUtil;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.concurrent.Executors;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Helper classes for working with Netty. In particular, these classes aim to enable adding
 * HTTP/Json support to servers created with the gRPC framework.
 */
public class NettyUtil {
  private static final Logger logger = Logger.getLogger(NettyUtil.class.getName());

  /**
   * A ChannelHandler which adapts HTTP/Json requests to Pubsub gRPC client calls.
   */
  public static final class HttpJsonAdapter extends ChannelDuplexHandler {
    private final PubsubJsonGrpcAdapters.PublisherAdapter publisherAdapter;
    private final PubsubJsonGrpcAdapters.SubscriberAdapter subscriberAdapter;
    private final boolean serveOkOnRootUri;

    /**
     * @param publisher HTTP/Json calls to the Publisher API will be forwarded to this object
     * @param subscriber HTTP/Json calls to the Subscriber API will be forwarded to this object
     * @param serveOkOnRootUri whether to serve an OK response on the root URI
     */
    public HttpJsonAdapter(PublisherGrpc.PublisherBlockingClient publisher,
        SubscriberGrpc.SubscriberBlockingClient subscriber, boolean serveOkOnRootUri) {
      this.publisherAdapter = new PubsubJsonGrpcAdapters.PublisherAdapter(publisher);
      this.subscriberAdapter = new PubsubJsonGrpcAdapters.SubscriberAdapter(subscriber);
      this.serveOkOnRootUri = serveOkOnRootUri;
    }

    /**
     * Attempts to adapt the HTTP/Json request to a Publisher or Subscriber call. If successful,
     * the response will be a JSON string with an accompanying HTTP code. Otherwise, the response
     * will simply be the 404 HTTP code.
     */
    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) {
      if (msg instanceof FullHttpRequest) {
        final FullHttpRequest request = (FullHttpRequest) msg;
        final String method = request.method().name();
        final String uri = stripLeadingSlash(request.uri());
        final String body = request.content().toString(Charset.forName("UTF-8"));

        FullHttpResponse response = new DefaultFullHttpResponse(
            request.protocolVersion(), HttpResponseStatus.NOT_IMPLEMENTED);

        if (uri.isEmpty() && serveOkOnRootUri) {
          response.setStatus(HttpResponseStatus.OK);
        } else {
          try {
            JsonResponse responseJson = publisherAdapter.handleRequest(method, uri, body);
            if (responseJson == null) {
              responseJson = subscriberAdapter.handleRequest(method, uri, body);
            }
            if (responseJson != null) {
              response.setStatus(HttpResponseStatus.valueOf(responseJson.getHttpCode()));
              response.headers().set(HttpHeaderNames.CONTENT_TYPE, "application/json");
              ByteBufUtil.writeUtf8(response.content(), responseJson.getContent());
            } else {
              logger.info("Unknown request URI: " + request.uri());
              response.setStatus(HttpResponseStatus.NOT_FOUND);
            }
          } catch (InvalidProtocolBufferException e) {
            logger.log(Level.INFO, "Invalid input: " + e.getMessage(), e);
            response.setStatus(HttpResponseStatus.BAD_REQUEST);
          }
        }
        response.headers().setInt(
            HttpHeaderNames.CONTENT_LENGTH, response.content().readableBytes());
        ctx.writeAndFlush(response);
      } else {
        ctx.fireChannelRead(msg);
      }
    }

    @Override
    public void channelReadComplete(ChannelHandlerContext ctx) {
      ctx.flush();
    }

    /**
     * Works around a PathTemplate bug where paths with a leading slash are not properly matched.
     */
    // TODO(hbchai): Fix the bug, then remove this.
    private static String stripLeadingSlash(String uri) {
      if (!uri.isEmpty() && uri.charAt(0) == '/') {
        return uri.substring(1);
      }
      return uri;
    }
  }

  /**
   * Determines whether a connection is HTTP/2. If it is HTTP/2, does nothing. Otherwise, replaces
   * all handlers following this one with nonHttp2Handler. Before the version has been determined,
   * all reads and writes to the Channel are buffered.
   */
  public static final class HttpVersionDecider extends ChannelDuplexHandler {
    private final ChannelHandler nonHttp2Handler;
    private final ByteBuf testBuffer;
    private final ByteBuf writeBuffer;
    private boolean notifiedInactive;
    private boolean protocolKnown;

    public HttpVersionDecider(ChannelHandler nonHttp2Handler) {
      this.nonHttp2Handler = nonHttp2Handler;
      this.testBuffer = Unpooled.directBuffer();
      this.writeBuffer = Unpooled.directBuffer();
      this.notifiedInactive = false;
      this.protocolKnown = false;
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
      if (protocolKnown) {
        ctx.fireChannelActive();
      } else {
        notifiedInactive = false;
      }
    }

    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
      if (protocolKnown) {
        ctx.fireChannelInactive();
      } else {
        notifiedInactive = true;
      }
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
      if (msg instanceof ByteBuf) {
        ByteBuf msgBytes = (ByteBuf) msg;
        // We read at least 24-bytes from the connection to determine whether the HTTP/2 connection
        // preface was sent. If the preface is not seen, all remaining handlers are replaced by
        // nonHttp2Handler.
        if (!protocolKnown) {
          // This variant of writeBytes() does not consume from the source buffer.
          testBuffer.writeBytes(msgBytes, 0, 24);
          if (testBuffer.readableBytes() >= 24) {
            if (testBuffer.slice(0, 24).equals(Http2CodecUtil.connectionPrefaceBuf())) {
              logger.info("Detected HTTP/2 connection.");
              // Dispatch all buffered operations.
              ctx.writeAndFlush(writeBuffer);
              if (notifiedInactive) {
                ctx.fireChannelInactive();
              }
            } else {
              logger.info("Detected non-HTTP/2 connection.");
              // Clear the pipeline, and discard all buffered operations.
              while (ctx.pipeline().last() != this) {
                ctx.pipeline().removeLast();
              }
              writeBuffer.clear();
              // Add the non-HTTP/2 handler.
              ctx.pipeline().addLast(nonHttp2Handler);
            }
            protocolKnown = true;
          }
        }
        // Once the protocol is known, incoming bytes - including those bytes read to detect the
        // preface - are forwarded to the next handler in the pipeline.
        if (protocolKnown) {
          ctx.fireChannelRead(msgBytes);
        }
      } else {
        ctx.fireChannelRead(msg);
      }
    }

    @Override
    public void write(ChannelHandlerContext ctx, Object msg, ChannelPromise promise)
        throws Exception {
      if (msg instanceof ByteBuf) {
        final ByteBuf msgBytes = (ByteBuf) msg;
        if (protocolKnown) {
          ctx.write(msgBytes);
        } else {
          // Buffer all writes until the protocol is known.
          writeBuffer.writeBytes(msgBytes);
        }
      } else {
        ctx.write(msg, promise);
      }
    }
  }

  /**
   * Calls onRegister whenever a new Channel has been registered.
   * This allows us to preemptively modify the Channel's pipeline, for example.
   */
  public static class CustomEventLoopGroup extends NioEventLoopGroup {
    private final ChannelFutureListener onRegister;

    public CustomEventLoopGroup(ChannelFutureListener onRegister) {
      super(1, Executors.newFixedThreadPool(1));
      this.onRegister = onRegister;
    }

    @Override
    public ChannelFuture register(final Channel channel) {
      return super.register(channel).addListener(onRegister);
    }

    @Override
    public ChannelFuture register(Channel channel, ChannelPromise promise) {
      return super.register(channel, promise).addListener(onRegister);
    }
  }
  
  /**
   * Works around crashes on Java 7 when the local hostname is longer than 64 characters long.
   * Must be called before the Netty server is started.
   * 
   * @see <a href="https://github.com/grpc/grpc-java/issues/1238">grpc-java issue 1238</a>
   */
  static void applyJava7LongHostnameWorkaround() {
    try {
      // This file is only available on Linux, which is fine since the bug only affects Linux.
      String pid = new File("/proc/self").getCanonicalFile().getName();
      System.setProperty("io.netty.processId", pid);
      logger.info("Applied Java 7 long hostname workaround.");
    } catch (IOException e) {
      logger.info("Unable to apply Java 7 long hostname workaround.");
    }
  }
}
