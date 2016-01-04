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

import com.google.protobuf.Empty;
import com.google.pubsub.v1.AcknowledgeRequest;
import com.google.pubsub.v1.DeleteSubscriptionRequest;
import com.google.pubsub.v1.DeleteTopicRequest;
import com.google.pubsub.v1.GetSubscriptionRequest;
import com.google.pubsub.v1.GetTopicRequest;
import com.google.pubsub.v1.ListSubscriptionsRequest;
import com.google.pubsub.v1.ListSubscriptionsResponse;
import com.google.pubsub.v1.ListTopicSubscriptionsRequest;
import com.google.pubsub.v1.ListTopicSubscriptionsResponse;
import com.google.pubsub.v1.ListTopicsRequest;
import com.google.pubsub.v1.ListTopicsResponse;
import com.google.pubsub.v1.ModifyAckDeadlineRequest;
import com.google.pubsub.v1.ModifyPushConfigRequest;
import com.google.pubsub.v1.PublishRequest;
import com.google.pubsub.v1.PublishResponse;
import com.google.pubsub.v1.PublisherGrpc;
import com.google.pubsub.v1.PullRequest;
import com.google.pubsub.v1.PullResponse;
import com.google.pubsub.v1.SubscriberGrpc;
import com.google.pubsub.v1.Subscription;
import com.google.pubsub.v1.Topic;

import io.grpc.Server;
import io.grpc.StatusException;
import io.grpc.StatusRuntimeException;
import io.grpc.netty.NettyServerBuilder;
import io.grpc.stub.StreamObserver;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerAppender;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.EventLoopGroup;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpRequestDecoder;
import io.netty.handler.codec.http.HttpResponseEncoder;
import io.netty.handler.logging.LoggingHandler;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/**
 * A gRPC protocol-specific wrapper for Publisher and Subscriber delegates, which typically refer to
 * a single object implementing both interfaces.
 */
public class FakePubsubGrpcServer implements PublisherGrpc.Publisher, SubscriberGrpc.Subscriber {
  private static final Logger logger = Logger.getLogger(FakePubsubGrpcServer.class.getName());

  private final int port;
  private final PublisherService publisher;
  private final SubscriberService subscriber;
  private long defaultPullDeadlineMillis;
  private EventLoopGroup workerGroup;
  private Server server;

  public FakePubsubGrpcServer(int port, PublisherService publisher, SubscriberService subscriber) {
    this.port = port;
    this.publisher = publisher;
    this.subscriber = subscriber;
    this.defaultPullDeadlineMillis = RpcDeadline.INFINITE;
    this.workerGroup = newWorkerGroup();
  }

  void setDefaultPullDeadlineMillis(long deadlineMillis) {
    defaultPullDeadlineMillis = deadlineMillis;
  }

  public void start() throws Exception {
    // Avoid resolving the local hostname at all costs, because it can trigger a crash on Java 7.
    // See https://github.com/grpc/grpc-java/issues/1238.
    NettyUtil.applyJava7LongHostnameWorkaround();
    InetSocketAddress socketAddr =
        new InetSocketAddress(InetAddress.getByAddress(new byte[] {127, 0, 0, 1}), port);
    
    server =
        NettyServerBuilder.forAddress(socketAddr)
            .workerEventLoopGroup(workerGroup)
            .addService(PublisherGrpc.bindService(this))
            .addService(SubscriberGrpc.bindService(this))
            .build()
            .start();

    Runtime.getRuntime().addShutdownHook(new Thread() {
      @Override
      public void run() {
        // Use stderr here since the logger may have been reset by its JVM shutdown hook.
        System.err.println("*** shutting down gRPC server since JVM is shutting down");
        FakePubsubGrpcServer.this.stop();
        System.err.println("*** server shut down");
      }
    });
  }

  public void awaitTerminated() throws Exception {
    server.awaitTermination();
  }

  public void stop() {
    if (server != null) {
      server.shutdown();
    }
    try {
      workerGroup.shutdownGracefully(100, 500, TimeUnit.MILLISECONDS).await();
    } catch (InterruptedException e) {
      // Do nothing.
    }
  }

  @Override
  public void createTopic(Topic request, StreamObserver<Topic> responseObserver) {
    try {
      responseObserver.onNext(publisher.createTopic(request));
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void publish(PublishRequest request, StreamObserver<PublishResponse> responseObserver) {
    try {
      responseObserver.onNext(publisher.publish(request));
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void getTopic(GetTopicRequest request, StreamObserver<Topic> responseObserver) {
    try {
      responseObserver.onNext(publisher.getTopic(request));
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void listTopics(
      ListTopicsRequest request, StreamObserver<ListTopicsResponse> responseObserver) {
    try {
      responseObserver.onNext(publisher.listTopics(request));
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void listTopicSubscriptions(
      ListTopicSubscriptionsRequest request,
      StreamObserver<ListTopicSubscriptionsResponse> responseObserver) {
    try {
      responseObserver.onNext(publisher.listTopicSubscriptions(request));
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void deleteTopic(DeleteTopicRequest request, StreamObserver<Empty> responseObserver) {
    try {
      publisher.deleteTopic(request);
      responseObserver.onNext(Empty.getDefaultInstance());
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void createSubscription(
      Subscription request, StreamObserver<Subscription> responseObserver) {
    try {
      responseObserver.onNext(subscriber.createSubscription(request));
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void getSubscription(
      GetSubscriptionRequest request, StreamObserver<Subscription> responseObserver) {
    try {
      responseObserver.onNext(subscriber.getSubscription(request));
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void listSubscriptions(
      ListSubscriptionsRequest request,
      StreamObserver<ListSubscriptionsResponse> responseObserver) {
    try {
      responseObserver.onNext(subscriber.listSubscriptions(request));
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void deleteSubscription(
      DeleteSubscriptionRequest request, StreamObserver<Empty> responseObserver) {
    try {
      subscriber.deleteSubscription(request);
      responseObserver.onNext(Empty.getDefaultInstance());
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void modifyAckDeadline(
      ModifyAckDeadlineRequest request, StreamObserver<Empty> responseObserver) {
    try {
      subscriber.modifyAckDeadline(request);
      responseObserver.onNext(Empty.getDefaultInstance());
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void acknowledge(AcknowledgeRequest request, StreamObserver<Empty> responseObserver) {
    try {
      subscriber.acknowledge(request);
      responseObserver.onNext(Empty.getDefaultInstance());
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void pull(PullRequest request, StreamObserver<PullResponse> responseObserver) {
    try {
      responseObserver.onNext(subscriber.pull(request, new RpcDeadline(defaultPullDeadlineMillis)));
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  @Override
  public void modifyPushConfig(
      ModifyPushConfigRequest request, StreamObserver<Empty> responseObserver) {
    try {
      subscriber.modifyPushConfig(request);
      responseObserver.onNext(Empty.getDefaultInstance());
      responseObserver.onCompleted();
    } catch (StatusException e) {
      responseObserver.onError(e);
    }
  }

  /**
   * The PublisherService and PublisherBlockingClient interfaces are nearly identical. The main
   * difference is in the exceptions declared to be thrown; the latter only throws
   * StatusRuntimeException, which we propagate the Status to.
   */
  private static class PublisherServiceForwarder implements PublisherGrpc.PublisherBlockingClient {
    private final PublisherService delegate;

    public PublisherServiceForwarder(PublisherService delegate) {
      this.delegate = delegate;
    }

    @Override
    public Topic createTopic(Topic request) {
      try {
        return delegate.createTopic(request);
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public PublishResponse publish(PublishRequest request) {
      try {
        return delegate.publish(request);
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public Topic getTopic(GetTopicRequest request) {
      try {
        return delegate.getTopic(request);
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public ListTopicsResponse listTopics(ListTopicsRequest request) {
      try {
        return delegate.listTopics(request);
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public ListTopicSubscriptionsResponse listTopicSubscriptions(
        ListTopicSubscriptionsRequest request) {
      try {
        return delegate.listTopicSubscriptions(request);
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public Empty deleteTopic(DeleteTopicRequest request) {
      try {
        delegate.deleteTopic(request);
        return Empty.getDefaultInstance();
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }
  }

  /**
   * The SubscriberService and SubscriberBlockingClient interfaces are nearly identical. The main
   * difference is in the exceptions declared to be thrown; the latter only throws
   * StatusRuntimeException, which we propagate the Status to.
   */
  private static class SubscriberServiceForwarder
      implements SubscriberGrpc.SubscriberBlockingClient {
    private final SubscriberService delegate;
    private RpcDeadline pullDeadline;

    public SubscriberServiceForwarder(SubscriberService delegate, RpcDeadline pullDeadline) {
      this.delegate = delegate;
      this.pullDeadline = pullDeadline;
    }

    @Override
    public Subscription createSubscription(Subscription request) {
      try {
        return delegate.createSubscription(request);
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public Subscription getSubscription(GetSubscriptionRequest request) {
      try {
        return delegate.getSubscription(request);
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public ListSubscriptionsResponse listSubscriptions(ListSubscriptionsRequest request) {
      try {
        return delegate.listSubscriptions(request);
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public Empty deleteSubscription(DeleteSubscriptionRequest request) {
      try {
        delegate.deleteSubscription(request);
        return Empty.getDefaultInstance();
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public Empty modifyAckDeadline(ModifyAckDeadlineRequest request) {
      try {
        delegate.modifyAckDeadline(request);
        return Empty.getDefaultInstance();
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public Empty acknowledge(AcknowledgeRequest request) {
      try {
        delegate.acknowledge(request);
        return Empty.getDefaultInstance();
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public PullResponse pull(PullRequest request) {
      try {
        return delegate.pull(request, pullDeadline);
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }

    @Override
    public Empty modifyPushConfig(ModifyPushConfigRequest request) {
      try {
        delegate.modifyPushConfig(request);
        return Empty.getDefaultInstance();
      } catch (StatusException e) {
        throw new StatusRuntimeException(e.getStatus());
      }
    }
  }

  /**
   * Returns a new instance that adds an HTTP/2 detection handler to the pipeline for newly
   * registered Channel objects. When HTTP/2 is ruled out for a given connection, the handler
   * responds by appending a new handler from newHttpJsonHandler().
   */
  private EventLoopGroup newWorkerGroup() {
    return new NettyUtil.CustomEventLoopGroup(new ChannelFutureListener() {
      @Override
      public void operationComplete(ChannelFuture future) throws Exception {
        if (future.isSuccess()) {
          logger.info("Adding handler(s) to newly registered Channel.");
          ChannelPipeline pipeline = future.channel().pipeline();
          pipeline.addFirst(null, new NettyUtil.HttpVersionDecider(newHttpJsonHandler()));
          pipeline.addFirst(null, new LoggingHandler());
        }
      }
    });
  }

  /**
   * Returns a new handler which when added to a ChannelPipeline will process HTTP/Json requests
   * using this fake instance's publisher and subscriber.
   */
  private ChannelHandler newHttpJsonHandler() {
    ChannelHandler httpJsonAdapter = new NettyUtil.HttpJsonAdapter(
        new PublisherServiceForwarder(publisher),
        new SubscriberServiceForwarder(subscriber, new RpcDeadline(defaultPullDeadlineMillis)),
        true);
    return new ChannelHandlerAppender(new HttpRequestDecoder(), new HttpResponseEncoder(),
        new HttpObjectAggregator(1 << 24), httpJsonAdapter);
  }
}
