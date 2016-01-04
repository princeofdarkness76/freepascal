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

import com.google.protobuf.Timestamp;
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
import com.google.pubsub.v1.PubsubMessage;
import com.google.pubsub.v1.PullRequest;
import com.google.pubsub.v1.PullResponse;
import com.google.pubsub.v1.PushConfig;
import com.google.pubsub.v1.ReceivedMessage;
import com.google.pubsub.v1.Subscription;
import com.google.pubsub.v1.Topic;

import io.grpc.Status;
import io.grpc.StatusException;

import org.json.simple.JSONObject;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;

import javax.xml.bind.DatatypeConverter;

/**
 * A fake Pubsub server which behaves much like the live Pubsub service, in accordance with the
 * Pubsub API. Does not implement the separate concerns of authentication, ACL-checks, rate
 * limiting, etc. Thread-safe.
 */
public class FakePubsubServer implements PublisherService, SubscriberService {
  // This maximum may not reflect the maximum enforced by the actual service.
  private static final int MAX_MESSAGES_PER_PUBLISH_REQUEST = 1000;

  // This maximum may not reflect the maximum enforced by the actual service.
  private static final int MAX_MESSAGES_PER_PULL_REQUEST = 100;

  // The default value of Subscription.ack_deadline_seconds, if none is specified.
  private static final int DEFAULT_ACK_DEADLINE_SECS = 60;

  // This maximum may not reflect the maximum enforced by the actual service.
  private static final int MAX_ACK_DEADLINE_SECS = 600;

  // The default page size for list operations that support paging.
  private static final int DEFAULT_PAGE_SIZE = 1000;

  // The internal sleep time when waiting inside a blocking pull operation.
  private static final long HANGING_PULL_POLLING_INTERVAL_MS = 50;

  // The maximum number of outstanding push requests for a given subscription. 
  private static final int NUM_CONCURRENT_PUSH_REQUESTS = 2;
  
  // Resource names.
  private static final String TOPICS_COLLECTION_NAME = "topics";
  private static final String SUBSCRIPTIONS_COLLECTION_NAME = "subscriptions";

  private static final Logger logger = Logger.getLogger(FakePubsubServer.class.getName());

  private final Set<String> validProjects;

  // Prefer concurrent maps to favor concurrency over memory efficiency (e.g. TreeMap with
  // added synchronization).
  private final ConcurrentMap<String, Topic> topics;
  private final ConcurrentMap<String, SubscriptionData> subscriptions;
  private final AtomicLong nextMessageId;
  private final AtomicLong nextAckId;

  // Push delivery is performed on this executor.
  private final ExecutorService executor;

  public FakePubsubServer(Collection<String> validProjects) {
    this.validProjects = new HashSet<>(validProjects);
    topics = new ConcurrentHashMap<>();
    subscriptions = new ConcurrentHashMap<>();
    nextMessageId = new AtomicLong(1);
    nextAckId = new AtomicLong(1);
    executor = Executors.newCachedThreadPool();
  }

  @Override
  public Topic createTopic(Topic topic) throws StatusException {
    checkProjectValidity(topic.getName(), TOPICS_COLLECTION_NAME);
    if (topics.containsKey(topic.getName())) {
      throw Status.ALREADY_EXISTS.withDescription("Topic already exists").asException();
    }
    topics.put(topic.getName(), topic);
    // We send the same data in the response as received in the request.
    return topic;
  }

  @Override
  public PublishResponse publish(PublishRequest request) throws StatusException {
    if (!topics.containsKey(request.getTopic())) {
      throw Status.NOT_FOUND.withDescription("Topic not found").asException();
    }
    if (request.getMessagesCount() == 0) {
      throw Status.INVALID_ARGUMENT.withDescription("No messages to publish").asException();
    }
    if (request.getMessagesCount() > MAX_MESSAGES_PER_PUBLISH_REQUEST) {
      throw Status.INVALID_ARGUMENT.withDescription("Too many messages to publish").asException();
    }

    PublishResponse.Builder builder = PublishResponse.newBuilder();
    List<PubsubMessage> messages = new ArrayList<>();

    for (PubsubMessage message : request.getMessagesList()) {
      if (message.getData().isEmpty() && message.getAttributes().isEmpty()) {
        throw Status.INVALID_ARGUMENT.withDescription("Some messages are empty").asException();
      }
      String messageId = Long.toString(nextMessageId.getAndIncrement());
      messages.add(PubsubMessage.newBuilder(message)
          .setMessageId(messageId)
          .build());
      builder.addMessageIds(messageId);
    }
    for (SubscriptionData subscription : subscriptions.values()) {
      if (subscription.getConfig().getTopic().equals(request.getTopic())) {
        subscription.getBacklog().addAll(messages);
      }
    }

    return builder.build();
  }

  @Override
  public Topic getTopic(GetTopicRequest request) throws StatusException {
    checkProjectValidity(request.getTopic(), TOPICS_COLLECTION_NAME);
    if (!topics.containsKey(request.getTopic())) {
      throw Status.NOT_FOUND.withDescription("Topic not found").asException();
    }
    return topics.get(request.getTopic());
  }

  @Override
  public ListTopicsResponse listTopics(ListTopicsRequest request) throws StatusException {
    final int pageSize = request.getPageSize() > 0 ? request.getPageSize() : DEFAULT_PAGE_SIZE;
    // We must sort the topics for consistency when results are returned in multiple pages. The
    // concurrent map does not impose a meaningful ordering.
    SortedMap<String, Topic> matchingTopics = new TreeMap<>();

    for (Topic topic : topics.values()) {
      if (topic.getName().startsWith(request.getProject() + "/")) {
        matchingTopics.put(topic.getName(), topic);
      }
    }
    if (!request.getPageToken().isEmpty()) {
      matchingTopics = matchingTopics.tailMap(request.getPageToken());
    }

    ListTopicsResponse.Builder builder = ListTopicsResponse.newBuilder();
    for (Topic topic : matchingTopics.values()) {
      if (builder.getTopicsCount() >= pageSize) {
        builder.setNextPageToken(topic.getName());
        break;
      }
      builder.addTopics(topic);
    }

    return builder.build();
  }

  @Override
  public ListTopicSubscriptionsResponse listTopicSubscriptions(
      ListTopicSubscriptionsRequest request) throws StatusException {
    final int pageSize = request.getPageSize() > 0 ? request.getPageSize() : DEFAULT_PAGE_SIZE;
    // We must sort the subscriptions for consistency when results are returned in multiple pages.
    // The concurrent map does not impose a meaningful ordering.
    SortedSet<String> matchingSubscriptions = new TreeSet<>();

    for (SubscriptionData subscription : subscriptions.values()) {
      if (subscription.getConfig().getTopic().equals(request.getTopic())) {
        matchingSubscriptions.add(subscription.getConfig().getName());
      }
    }
    if (!request.getPageToken().isEmpty()) {
      matchingSubscriptions = matchingSubscriptions.tailSet(request.getPageToken());
    }

    ListTopicSubscriptionsResponse.Builder builder = ListTopicSubscriptionsResponse.newBuilder();
    for (String subscription : matchingSubscriptions) {
      if (builder.getSubscriptionsCount() >= pageSize) {
        builder.setNextPageToken(subscription);
        break;
      }
      builder.addSubscriptions(subscription);
    }

    return builder.build();
  }

  @Override
  public void deleteTopic(DeleteTopicRequest request) throws StatusException {
    if (!topics.containsKey(request.getTopic())) {
      throw Status.NOT_FOUND.withDescription("Topic not found").asException();
    }
    topics.remove(request.getTopic());
  }

  @Override
  public Subscription createSubscription(Subscription subscription) throws StatusException {
    checkProjectValidity(subscription.getName(), SUBSCRIPTIONS_COLLECTION_NAME);
    checkProjectValidity(subscription.getTopic(), TOPICS_COLLECTION_NAME);
    checkPushEndpointValidity(subscription.getPushConfig());
    if (subscriptions.containsKey(subscription.getName())) {
      throw Status.ALREADY_EXISTS.withDescription("Subscription already exists").asException();
    }
    if (subscription.getTopic().isEmpty()) {
      throw Status.INVALID_ARGUMENT.withDescription("No topic specified").asException();
    }
    if (!topics.containsKey(subscription.getTopic())) {
      throw Status.NOT_FOUND.withDescription("Subscription topic does not exist").asException();
    }
    if (subscription.getAckDeadlineSeconds() < 0
        || subscription.getAckDeadlineSeconds() > MAX_ACK_DEADLINE_SECS) {
      throw Status.INVALID_ARGUMENT.withDescription("ack_deadline_secs out of bounds")
                .asException();
    }

    Subscription.Builder builder = Subscription.newBuilder(subscription);
    if (!subscription.hasPushConfig()) {
      // An empty PushConfig message is echoed back when the value is absent from the request.
      builder.getPushConfigBuilder();
    }
    if (subscription.getAckDeadlineSeconds() == 0) {
      builder.setAckDeadlineSeconds(DEFAULT_ACK_DEADLINE_SECS);
    }
    subscription = builder.build();
    subscriptions.put(
        subscription.getName(), new SubscriptionData(subscription, nextAckId, executor));
    return subscription;
  }

  @Override
  public Subscription getSubscription(GetSubscriptionRequest request) throws StatusException {
    checkProjectValidity(request.getSubscription(), SUBSCRIPTIONS_COLLECTION_NAME);
    SubscriptionData subscription = subscriptions.get(request.getSubscription());
    if (subscription == null) {
      throw Status.NOT_FOUND.withDescription("Subscription does not exist").asException();
    }
    return subscription.getConfig();
  }

  @Override
  public ListSubscriptionsResponse listSubscriptions(ListSubscriptionsRequest request)
      throws StatusException {
    final int pageSize = request.getPageSize() > 0 ? request.getPageSize() : DEFAULT_PAGE_SIZE;
    // We must sort the subscriptions for consistency when results are returned in multiple pages.
    // The concurrent map does not impose a meaningful ordering.
    SortedMap<String, Subscription> matchingSubscriptions = new TreeMap<>();

    for (SubscriptionData subscription : subscriptions.values()) {
      if (subscription.getConfig().getName().startsWith(request.getProject() + "/")) {
        matchingSubscriptions.put(subscription.getConfig().getName(), subscription.getConfig());
      }
    }
    if (!request.getPageToken().isEmpty()) {
      matchingSubscriptions = matchingSubscriptions.tailMap(request.getPageToken());
    }

    ListSubscriptionsResponse.Builder builder = ListSubscriptionsResponse.newBuilder();
    for (Subscription subscription : matchingSubscriptions.values()) {
      if (builder.getSubscriptionsCount() >= pageSize) {
        builder.setNextPageToken(subscription.getName());
        break;
      }
      builder.addSubscriptions(subscription);
    }

    return builder.build();
  }

  @Override
  public void deleteSubscription(DeleteSubscriptionRequest request) throws StatusException {
    SubscriptionData removed = subscriptions.remove(request.getSubscription());
    if (removed == null) {
      throw Status.NOT_FOUND.withDescription("Subscription does not exist").asException();
    }
    removed.close();
  }

  @Override
  public void modifyAckDeadline(ModifyAckDeadlineRequest request) throws StatusException {
    checkProjectValidity(request.getSubscription(), SUBSCRIPTIONS_COLLECTION_NAME);
    SubscriptionData subscription = subscriptions.get(request.getSubscription());
    if (subscription == null) {
      throw Status.NOT_FOUND.withDescription("Subscription does not exist").asException();
    }
    if (request.getAckDeadlineSeconds() < 0) {
      throw Status.INVALID_ARGUMENT.withDescription("Ack deadline cannot be negative")
                .asException();
    }
    if (request.getAckIdsList().isEmpty()) {
      throw Status.INVALID_ARGUMENT.withDescription("No ack ids specified").asException();
    }

    subscription.getBacklog().modifyAckDeadline(
        request.getAckIdsList(), 1000 * request.getAckDeadlineSeconds());
  }

  @Override
  public void acknowledge(AcknowledgeRequest request) throws StatusException {
    checkProjectValidity(request.getSubscription(), SUBSCRIPTIONS_COLLECTION_NAME);
    SubscriptionData subscription = subscriptions.get(request.getSubscription());
    if (subscription == null) {
      throw Status.NOT_FOUND.withDescription("Subscription does not exist").asException();
    }
    if (request.getAckIdsCount() == 0) {
      throw Status.INVALID_ARGUMENT.withDescription("No ack ids specified.").asException();
    }
    subscription.getBacklog().acknowledge(request.getAckIdsList());
  }

  @Override
  public PullResponse pull(PullRequest request, RpcDeadline deadline) throws StatusException {
    checkProjectValidity(request.getSubscription(), SUBSCRIPTIONS_COLLECTION_NAME);
    SubscriptionData subscription = subscriptions.get(request.getSubscription());
    if (subscription == null) {
      throw Status.NOT_FOUND.withDescription("Subscription does not exist").asException();
    }
    if (request.getMaxMessages() == 0) {
      throw Status.INVALID_ARGUMENT.withDescription("No max_messages specified").asException();
    }

    List<ReceivedMessage> newMessages = subscription.getBacklog().pull(request.getMaxMessages());
    if (!request.getReturnImmediately()) {
      // We wait until the deadline is just about to expire, with a safety margin.
      while (newMessages.isEmpty() && deadline.getRemainingMillis() >= 1000) {
        try {
          // The fake prefers a simple code rather than optimal, so we do this sleep loop here; this
          // also better simulates the behavior of the Cloud Pub/Sub server.
          Thread.sleep(HANGING_PULL_POLLING_INTERVAL_MS);
        } catch (InterruptedException ie) {
          continue;
        }
        newMessages = subscription.getBacklog().pull(request.getMaxMessages());
      }
    }

    return PullResponse.newBuilder().addAllReceivedMessages(newMessages).build();
  }

  @Override
  public void modifyPushConfig(ModifyPushConfigRequest request) throws StatusException {
    checkProjectValidity(request.getSubscription(), SUBSCRIPTIONS_COLLECTION_NAME);
    checkPushEndpointValidity(request.getPushConfig());
    SubscriptionData subscription = subscriptions.get(request.getSubscription());
    if (subscription == null) {
      throw Status.NOT_FOUND.withDescription("Subscription does not exist").asException();
    }
    subscription.setPushConfig(request.getPushConfig());
  }

  /**
   * Checks the resource path specifies a valid project.
   *
   * @param resourcePath the resource path
   * @param resourceName the resource name
   * @throws StatusException if the resource path is badly formatted or contains an invalid project
   */
  private void checkProjectValidity(String resourcePath, String resourceName)
      throws StatusException {
    ProjectAndResourceKey pt = ProjectAndResourceKey.parseFrom(resourcePath, resourceName);
    if (!validProjects.isEmpty() && !validProjects.contains(pt.project)) {
      throw Status.NOT_FOUND.withDescription("Invalid project").asException();
    }
  }
  
  /**
   * Check the push configuration has a valid endpoint URL.
   * 
   * @param config the push configuration to check
   * @throws StatusException if the push endpoint is invalid
   */
  private void checkPushEndpointValidity(PushConfig config) throws StatusException {
    final String endpoint = config.getPushEndpoint();
    if (!endpoint.isEmpty()) {
      try {
        new URL(endpoint);
      } catch (MalformedURLException e) {
        throw Status.INVALID_ARGUMENT.withDescription("push_endpoint is not a valid URL")
                  .asException();
      }
    }
  }

  /**
   * A Pubsub project and topic or subscription name, parsed from a full topic or subscription path.
   */
  private static class ProjectAndResourceKey {
    // Matches valid resource values.
    private static final Pattern RESOURCE_PATTERN = Pattern.compile("^[\\w\\._-]+$");

    public final String project;
    public final String resourceValue;

    /**
     * Parses a resource path. The expected format is
     * "projects/PROJECT/RESOURCE_NAME/RESOURCE_VALUE".
     */
    public static ProjectAndResourceKey parseFrom(String resourcePath, String resourceName)
        throws StatusException {
      String[] parts = resourcePath.split("/", 4);
      if (parts.length != 4 || !parts[0].equals("projects") || !parts[2].equals(resourceName)
          || !RESOURCE_PATTERN.matcher(parts[3]).matches()) {
        throw new StatusException(
            Status.INVALID_ARGUMENT.withDescription("Invalid " + resourceName + " name"));
      }
      return new ProjectAndResourceKey(parts[1], parts[3]);
    }

    private ProjectAndResourceKey(String project, String resourceValue) {
      this.project = project;
      this.resourceValue = resourceValue;
    }
  }

  /**
   * An identifier for a pulled message requiring acknowledgment. The textual format of the
   * identifier is non-standard.
   */
  private static class AckId {
    public final String subscriptionName;
    public final long instance;

    public static boolean isValid(String ackId) {
      return parseFrom(ackId) != null;
    }

    public static AckId parseFrom(String ackId) {
      String[] parts = ackId.split(":", 2);
      if (parts.length != 2 || parts[0].isEmpty() || parts[1].isEmpty()) {
        return null;
      }
      long instance;
      try {
        instance = Long.parseLong(parts[1]);
      } catch (NumberFormatException nfe) {
        return null;
      }
      return new AckId(parts[0], instance);
    }

    public AckId(String subscriptionName, long instance) {
      this.subscriptionName = subscriptionName;
      this.instance = instance;
    }

    @Override
    public String toString() {
      return subscriptionName + ":" + instance;
    }
  }

  /**
   * A message which has been dispatched to the client as a result of a subscriber pull request.
   */
  private static class PulledMessage {
    public final PubsubMessage message;
    public long expirationMillis;

    public PulledMessage(PubsubMessage message, long expirationMillis) {
      this.message = message;
      this.expirationMillis = expirationMillis;
    }
  }

  /**
   * A backlog of messages that have not been completely delivered to a subscriber. Thread-safe.
   */
  private static class MessageBacklog {
    private final String subscriptionName;
    private final int ackDeadlineSecs;
    private final AtomicLong ackIdProvider;

    // Maps message_id's to messages.
    private final LinkedHashMap<String, PubsubMessage> unpulled;

    // Maps ack_id's to pulled messages.
    private final Map<String, PulledMessage> unacknowledged;

    public MessageBacklog(String subscriptionName, int ackDeadlineSecs, AtomicLong ackIdProvider) {
      this.subscriptionName = subscriptionName;
      this.ackDeadlineSecs = ackDeadlineSecs;
      this.ackIdProvider = ackIdProvider;
      unpulled = new LinkedHashMap<>();
      unacknowledged = new HashMap<>();
    }

    /**
     * Adds a list of messages to the collection of unpulled messages.
     */
    public synchronized void addAll(List<PubsubMessage> messages) {
      for (PubsubMessage message : messages) {
        unpulled.put(message.getMessageId(), message);
      }
    }

    /**
     * Moves at most <code>maxMessages</code> messages from the collection of unpulled messages
     * to the collection of unacknowledged messages, as well as updating pulled messages whose
     * ack deadlines have expired.
     *
     * @param maxMessages
     */
    public synchronized List<ReceivedMessage> pull(int maxMessages) {
      List<ReceivedMessage> results = new ArrayList<>();
      maxMessages = Math.min(maxMessages, MAX_MESSAGES_PER_PULL_REQUEST);
      final long nowMillis = System.currentTimeMillis();
      updateExpiredAckDeadlines(nowMillis);

      Iterator<Map.Entry<String, PubsubMessage>> it = unpulled.entrySet().iterator();
      while (it.hasNext()) {
        if (results.size() >= maxMessages) {
          break;
        }
        PubsubMessage pulled = it.next().getValue();
        String ackId = new AckId(subscriptionName, ackIdProvider.getAndIncrement()).toString();
        unacknowledged.put(ackId, new PulledMessage(pulled, nowMillis + 1000 * ackDeadlineSecs));
        it.remove();
        results.add(ReceivedMessage.newBuilder().setMessage(pulled).setAckId(ackId).build());
      }

      return results;
    }

    /**
     * Moves messages corresponding to <code>ackIds</code> from the collection of unacknowledged
     * messages to the collection of acknowledged messages.
     *
     * @param ackIds
     */
    public synchronized void acknowledge(List<String> ackIds) throws StatusException {
      // First validate all ackIds.
      for (String ackIdText : ackIds) {
        AckId ackId = AckId.parseFrom(ackIdText);
        if (ackId == null) {
          throw Status.INVALID_ARGUMENT.withDescription("Invalid ack id (ack_id=" + ackIdText + ")")
                    .asException();
        }
        if (!ackId.subscriptionName.equals(subscriptionName)) {
          throw Status.INVALID_ARGUMENT.withDescription(
                                           "Some ack_id values are for another subscription")
                    .asException();
        }
      }
      unacknowledged.keySet().removeAll(ackIds);
    }

    /**
     * Modifies the ack deadline for the unacknowledged messages specified by <code>ackIds</code>.
     *
     * @param ackIds
     * @param ackDeadlineMillis
     */
    public synchronized void modifyAckDeadline(List<String> ackIds, long ackDeadlineMillis)
        throws StatusException {
      for (String ackId : ackIds) {
        if (!AckId.isValid(ackId)) {
          throw Status.INVALID_ARGUMENT.withDescription("Invalid ack id").asException();
        }
      }
      for (String ackId : ackIds) {
        if (!unacknowledged.containsKey(ackId)) {
          continue;
        }
        PulledMessage pulled = unacknowledged.get(ackId);
        if (ackDeadlineMillis == 0) {
          unpulled.put(pulled.message.getMessageId(), pulled.message);
          unacknowledged.remove(ackId);
        } else {
          pulled.expirationMillis = System.currentTimeMillis() + ackDeadlineMillis;
        }
      }
    }

    /**
     * Removes messages from the unacknowledged and acknowledged collections if their ack deadline
     * has elapsed.
     */
    private void updateExpiredAckDeadlines(long nowMillis) {
      Iterator<Map.Entry<String, PulledMessage>> it = unacknowledged.entrySet().iterator();
      while (it.hasNext()) {
        PulledMessage pulled = it.next().getValue();
        if (pulled.expirationMillis <= nowMillis) {
          unpulled.put(pulled.message.getMessageId(), pulled.message);
          it.remove();
        }
      }
    }
  }

  /**
   * An execution context that performs push delivery for a given subscription. Thread-safe.
   */
  static class PushLoop implements Runnable {
    // The delay between failed push attempts.
    static final long PUSH_RETRY_AFTER_FAIL_DELAY_MS = 1000;
    
    private final SubscriptionData subscription;
    private final int checkIntervalMillis; 
    private AtomicBoolean stopRequested;

    /**
     * @param subscription the subscription whose message backlog to push
     * @param checkIntervalMillis how often to check for new messages to push when the push queue
     *                            is empty or a push response indicated failure
     */
    public PushLoop(SubscriptionData subscription, int checkIntervalMillis) {
      this.subscription = subscription;
      this.checkIntervalMillis = checkIntervalMillis;
      this.stopRequested = new AtomicBoolean(false);
    }

    /**
     * Pushes backlogged messages to the endpoint if one is configured. Runs until stop() is
     * called.
     */
    @Override
    public void run() {
      while (!stopRequested.get()) {
        final String endpoint = subscription.getConfig().getPushConfig().getPushEndpoint();

        // Check for empty in case there is a race condition modifying the endpoint.
        if (!endpoint.isEmpty()) {
          List<ReceivedMessage> newMessages = subscription.getBacklog().pull(1);
          if (!newMessages.isEmpty()) {
            ReceivedMessage newMessage = newMessages.get(0);
            List<String> ackIds = Arrays.asList(newMessage.getAckId());
            try {
              if (push(newMessage.getMessage(), endpoint)) {
                subscription.getBacklog().acknowledge(ackIds);
                continue;  // Skip sleep when we've pushed a message.
              } else {
                subscription.getBacklog().modifyAckDeadline(ackIds, PUSH_RETRY_AFTER_FAIL_DELAY_MS);
              }
            } catch (StatusException e) {
              logger.log(Level.SEVERE, "Unexpected exception: " + e.getMessage(), e);
            }
          }
        }
        // No fancy slow-start or backoff logic for now.
        try {
          Thread.sleep(checkIntervalMillis);
        } catch (InterruptedException e) {
          // Do nothing.
        }
      }
    }

    /**
     * Causes run() to return if it is running, and turns any subsequent calls to run() into
     * no-ops. Does not block.
     */
    public void stop() {
      stopRequested.set(true);
    }

    /**
     * Pushes the message to the HTTP endpoint as JSON with a blocking call.
     */
    private boolean push(PubsubMessage message, String endpoint) {
      // For simplicity, we open and close a new connection with every request.
      try {
        final String content = toJsonStringForPush(message);
        final URL url = new URL(endpoint);
        final HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setDoOutput(true);
        conn.setConnectTimeout(1000 * subscription.getConfig().getAckDeadlineSeconds());
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setRequestProperty("Content-Length", Integer.toString(content.length()));
        try (OutputStreamWriter writer = new OutputStreamWriter(conn.getOutputStream(), "UTF-8")) {
          writer.write(content);
        } finally {
          conn.disconnect();
        }
        if (isAck(conn.getResponseCode())) {
          return true;
        }
        logger.info("Fetched url '" + endpoint
            + "' but got a response code that is not an acknowledgement: "
            + conn.getResponseCode());
      } catch (IOException e) {
        logger.log(Level.INFO,
            "Failed to push to endpoint '" + endpoint + "': " + e.getMessage(), e);
      }
      return false;
    }

    /**
     * Return true iff code is among the set of documented response codes for acknowledgement.
     */
    private static boolean isAck(int code) {
      return code == 102 || code == 200 || code == 201 || code == 203 || code == 204;
    }

    /**
     * Converts a PubsubMessage to its JSON push request equivalent and returns it.
     */
    // Silence warnings about references to JSONObject as HashMap needing to be parameterized.
    @SuppressWarnings("unchecked")  
    private String toJsonStringForPush(PubsubMessage from) {
      // Follow the push request body example from sample code:
      //
      // {
      //   "message": {
      //     "attributes": {
      //       "string-value": "string-value",
      //       // ... more attributes
      //     },
      //     "data": "base64-no-line-feeds-variant-representation-of-payload",
      //     "message_id": "string-value"
      //   },
      //   "subscription": "string-value"
      // }
      //
      JSONObject attributes = new JSONObject();
      attributes.putAll(from.getAttributes());
      JSONObject message = new JSONObject();
      message.put("attributes", attributes);
      message.put("data", DatatypeConverter.printBase64Binary(from.getData().toByteArray()));
      message.put("message_id", from.getMessageId());

      JSONObject push = new JSONObject();
      push.put("message", message);
      push.put("subscription", subscription.getConfig().getName());
      return push.toJSONString();
    }
  }

  /**
   * A subscription that captures all published messages past a sync point in time. Thread-safe.
   */
  static class SubscriptionData implements Closeable {
    static final int PUSH_POLLING_INTERVAL_MS = 100;  
    
    private Subscription subscription;
    private final Executor pushExecutor;
    private final MessageBacklog backlog;
    private List<PushLoop> pushLoops;

    public SubscriptionData(
        Subscription subscription, AtomicLong ackIdProvider, Executor pushExecutor) {
      this.subscription = subscription;
      this.pushExecutor = pushExecutor;
      this.backlog = new MessageBacklog(
          subscription.getName(), subscription.getAckDeadlineSeconds(), ackIdProvider);
      this.pushLoops = new ArrayList<>();
      setPushConfig(subscription.getPushConfig());
    }

    /**
     * Stops asynchronous work being performed on pushExecutor.
     */
    @Override
    public void close() {
      stopPushLoops();
    }

    public Subscription getConfig() {
      return subscription;
    }

    public void setPushConfig(PushConfig pushConfig) {
      subscription = Subscription.newBuilder(subscription).setPushConfig(pushConfig).build();
      if (pushConfig.getPushEndpoint().isEmpty()) {
        stopPushLoops();
      } else {
        startPushLoops();
      }
    }

    public MessageBacklog getBacklog() {
      return backlog;
    }
    
    private synchronized void startPushLoops() {
      stopPushLoops();
      for (int i = 0; i < NUM_CONCURRENT_PUSH_REQUESTS; ++i) {
        PushLoop pushLoop = new PushLoop(this, PUSH_POLLING_INTERVAL_MS);
        pushLoops.add(pushLoop);
        pushExecutor.execute(pushLoop);
      }
    }
    
    private synchronized void stopPushLoops() {
      for (PushLoop pushLoop : pushLoops) {
        pushLoop.stop();
      }
      pushLoops.clear();
    }
  }
}
