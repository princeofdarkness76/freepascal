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

import com.google.pubsub.v1.AcknowledgeRequest;
import com.google.pubsub.v1.DeleteSubscriptionRequest;
import com.google.pubsub.v1.GetSubscriptionRequest;
import com.google.pubsub.v1.ListSubscriptionsRequest;
import com.google.pubsub.v1.ListSubscriptionsResponse;
import com.google.pubsub.v1.ModifyAckDeadlineRequest;
import com.google.pubsub.v1.ModifyPushConfigRequest;
import com.google.pubsub.v1.PullRequest;
import com.google.pubsub.v1.PullResponse;
import com.google.pubsub.v1.Subscription;

import io.grpc.StatusException;

/**
 * Abstraction of the v1 Subscriber API. 
 */
public interface SubscriberService {
  Subscription createSubscription(Subscription subscription) throws StatusException;

  Subscription getSubscription(GetSubscriptionRequest request) throws StatusException;

  ListSubscriptionsResponse listSubscriptions(ListSubscriptionsRequest request)
      throws StatusException;

  void deleteSubscription(DeleteSubscriptionRequest request) throws StatusException;

  void modifyAckDeadline(ModifyAckDeadlineRequest request) throws StatusException;

  void acknowledge(AcknowledgeRequest request) throws StatusException;

  // Takes a deadline object as a workaround for lack of native deadline support.
  // Follow: https://github.com/grpc/grpc-java/issues/58
  PullResponse pull(PullRequest request, RpcDeadline deadline) throws StatusException;

  void modifyPushConfig(ModifyPushConfigRequest request) throws StatusException;

}
