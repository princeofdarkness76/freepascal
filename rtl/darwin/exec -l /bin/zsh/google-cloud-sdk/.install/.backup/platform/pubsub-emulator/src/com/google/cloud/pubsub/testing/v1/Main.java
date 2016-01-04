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

import fi.iki.elonen.NanoHTTPD;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

/**
 * Entrypoint to Pubsub v1 fake.
 */
public class Main {
  private static final Logger logger = Logger.getLogger(Main.class.getName());

  /**
   * Supports basic command line flag parsing.
   */
  private static class Flags {
    private Map<String, String> flags;
    private List<String> args;

    public Flags(String[] args) {
      flags = new HashMap<String, String>();
      this.args = new ArrayList<String>();
      for (String arg : args) {
        if (!addFlag(arg)) {
          this.args.add(arg);
        }
      }
    }

    public String getString(String flagName, String defaultValue) {
      if (flags.containsKey(flagName)) {
        return flags.get(flagName);
      }
      return defaultValue;
    }

    /**
     * Splits the flag value for flagName using splitRegex as the delimiter, and removes empty
     * strings from the post-split values.
     */
    public List<String> getStringsIgnoreEmpty(String flagName, String splitRegex) {
      List<String> results = new ArrayList<>();
      for (String value : getString(flagName, "").split(splitRegex)) {
        if (!value.isEmpty()) {
          results.add(value);
        }
      }
      return results;
    }

    public int getInt(String flagName, int defaultValue) {
      if (flags.containsKey(flagName)) {
        return Integer.parseInt(flags.get(flagName));
      }
      return defaultValue;
    }

    public long getLong(String flagName, long defaultValue) {
      if (flags.containsKey(flagName)) {
        return Long.parseLong(flags.get(flagName));
      }
      return defaultValue;
    }

    public boolean getBool(String flagName, boolean defaultValue) {
      if (flags.containsKey(flagName)) {
        return !flags.get(flagName).equals("false");
      }
      return defaultValue;
    }

    public List<String> getArgs() {
      return args;
    }

    private boolean addFlag(String arg) {
      if (arg.length() < 2 || arg.charAt(0) != '-') {
        return false;
      }
      String flag;
      if (arg.charAt(1) != '-') {
        flag = arg.substring(1);
      } else {
        if (arg.length() < 3 || arg.charAt(2) == '-') {
          return false;
        }
        flag = arg.substring(2);
      }
      String[] nameValue = flag.split("=", 2);
      flags.put(nameValue[0], nameValue.length > 1 ? nameValue[1] : "");
      return true;
    }
  }

  /**
   * Simple HTTP server that just responds "ok" on the specified path.
   */
  private static class StatusServer extends NanoHTTPD {
    private final String path;

    public StatusServer(int port, String path) {
      super(port);
      this.path = path;
    }

    @Override
    public NanoHTTPD.Response serve(NanoHTTPD.IHTTPSession session) {
      if (session.getUri().equals(path)) {
        return new NanoHTTPD.Response(NanoHTTPD.Response.Status.OK, "text/plain", "ok");
      }
      return super.serve(session);
    }
  }

  private static void printHelp() {
    System.out.println("Fake for Google Pub/Sub");
    System.out.println("--help: Show this help message and exit.");
    System.out.println("--port: The port on which the server should run.");
    System.out.println("--projects: A comma-separated list of all valid project names. "
        + "If unspecified, all projects are valid.");
    // We intentionally do not document --pull_deadline, which we may remove in the future.
    // We intentionally do not document --status_port, which we may remove in the future.
  }
  
  private static void printInfo() {
    System.out.println("This is the Google Pub/Sub fake.");
    System.out.println("Implementation may be incomplete or differ from the real system.");
  }

  /**
   * Flags:
   *
   * <ul>
   * <li>--help: Show the help message and exit.</li>
   * <li>--port: The port on which the server should run.</li>
   * <li>--projects: A comma-separated list of all valid project names. If unspecified, all projects
   * are valid.</li>
   * <li>--pull_deadline: The default RPC deadline to simulate for pull operations, in
   * milliseconds. May be removed in the future.</li>
   * <li>--status_port: The port on which the status of this server may be queried on the root URL.
   * Must be different from --port due to a current limitation in underlying libraries. If
   * unspecified, the status is not exported. May be removed in the future, i.e. if the status can
   * be reported on the RPC port.</li>
   * </ul>
   */
  public static void main(String[] args) throws Exception {
    final Flags flags = new Flags(args);
    if (flags.getBool("help", false)) {
      printHelp();
      return;
    }
    
    printInfo();

    final Set<String> validProjects = new HashSet<>();
    validProjects.addAll(flags.getStringsIgnoreEmpty("projects", ","));
    final FakePubsubServer fakeServer = new FakePubsubServer(validProjects);
    final int fakePort = flags.getInt("port", 8080);
    final int statusPort = flags.getInt("status_port", 0);
    if (statusPort == fakePort) {
      System.err.println("--status_port must be different from --port.");
      System.exit(1);
    }

    final FakePubsubGrpcServer fake = new FakePubsubGrpcServer(fakePort, fakeServer, fakeServer);
    fake.setDefaultPullDeadlineMillis(flags.getLong("pull_deadline", RpcDeadline.INFINITE));
    fake.start();
    logger.info("Server started, listening on " + fakePort);
    if (statusPort != 0) {
      StatusServer statusServer = new StatusServer(statusPort, "/");
      statusServer.start();
      logger.info("Status: http://localhost:" + statusPort + "/");
      fake.awaitTerminated();
      statusServer.stop();
    } else {
      fake.awaitTerminated();
    }
  }
}
