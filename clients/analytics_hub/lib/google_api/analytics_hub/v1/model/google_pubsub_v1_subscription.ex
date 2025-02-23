# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AnalyticsHub.V1.Model.GooglePubsubV1Subscription do
  @moduledoc """
  A subscription resource. If none of `push_config`, `bigquery_config`, or `cloud_storage_config` is set, then the subscriber will pull and ack messages using API methods. At most one of these fields may be set.

  ## Attributes

  *   `ackDeadlineSeconds` (*type:* `integer()`, *default:* `nil`) - Optional. The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be _outstanding_. During that time period, the message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.
  *   `analyticsHubSubscriptionInfo` (*type:* `GoogleApi.AnalyticsHub.V1.Model.AnalyticsHubSubscriptionInfo.t`, *default:* `nil`) - Output only. Information about the associated Analytics Hub subscription. Only set if the subscritpion is created by Analytics Hub.
  *   `bigqueryConfig` (*type:* `GoogleApi.AnalyticsHub.V1.Model.BigQueryConfig.t`, *default:* `nil`) - Optional. If delivery to BigQuery is used with this subscription, this field is used to configure it.
  *   `cloudStorageConfig` (*type:* `GoogleApi.AnalyticsHub.V1.Model.CloudStorageConfig.t`, *default:* `nil`) - Optional. If delivery to Google Cloud Storage is used with this subscription, this field is used to configure it.
  *   `deadLetterPolicy` (*type:* `GoogleApi.AnalyticsHub.V1.Model.DeadLetterPolicy.t`, *default:* `nil`) - Optional. A policy that specifies the conditions for dead lettering messages in this subscription. If dead_letter_policy is not set, dead lettering is disabled. The Pub/Sub service account associated with this subscriptions's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Acknowledge() messages on this subscription.
  *   `detached` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates whether the subscription is detached from its topic. Detached subscriptions don't receive messages from their topic and don't retain any backlog. `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will not be made.
  *   `enableExactlyOnceDelivery` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, Pub/Sub provides the following guarantees for the delivery of a message with a given value of `message_id` on this subscription: * The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgment deadline expires. * An acknowledged message will not be resent to a subscriber. Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery` is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct `message_id` values.
  *   `enableMessageOrdering` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, messages published with the same `ordering_key` in `PubsubMessage` will be delivered to the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they may be delivered in any order.
  *   `expirationPolicy` (*type:* `GoogleApi.AnalyticsHub.V1.Model.ExpirationPolicy.t`, *default:* `nil`) - Optional. A policy that specifies the conditions for this subscription's expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If `expiration_policy` is not set, a *default policy* with `ttl` of 31 days will be used. The minimum allowed value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set, but `expiration_policy.ttl` is not set, the subscription never expires.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. An expression written in the Pub/Sub [filter language](https://cloud.google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s whose `attributes` field matches the filter are delivered on this subscription. If empty, then no messages are filtered out.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  *   `messageRetentionDuration` (*type:* `String.t`, *default:* `nil`) - Optional. How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If `retain_acked_messages` is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a `Seek` can be done. Defaults to 7 days. Cannot be more than 31 days or less than 10 minutes.
  *   `messageTransforms` (*type:* `list(GoogleApi.AnalyticsHub.V1.Model.MessageTransform.t)`, *default:* `nil`) - Optional. Transforms to be applied to messages before they are delivered to subscribers. Transforms are applied in the order specified.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the subscription. Format is `projects/{project}/subscriptions/{sub}`.
  *   `pushConfig` (*type:* `GoogleApi.AnalyticsHub.V1.Model.PushConfig.t`, *default:* `nil`) - Optional. If push delivery is used with this subscription, this field is used to configure it.
  *   `retainAckedMessages` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the `message_retention_duration` window. This must be true if you would like to [`Seek` to a timestamp] (https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay previously-acknowledged messages.
  *   `retryPolicy` (*type:* `GoogleApi.AnalyticsHub.V1.Model.RetryPolicy.t`, *default:* `nil`) - Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgment deadline exceeded events for a given message.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. An output-only field indicating whether or not the subscription can receive messages.
  *   `topicMessageRetentionDuration` (*type:* `String.t`, *default:* `nil`) - Output only. Indicates the minimum duration for which a message is retained after it is published to the subscription's topic. If this field is set, messages published to the subscription's topic in the last `topic_message_retention_duration` are always available to subscribers. See the `message_retention_duration` field in `Topic`. This field is set only in responses from the server; it is ignored if it is set in any requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ackDeadlineSeconds => integer() | nil,
          :analyticsHubSubscriptionInfo =>
            GoogleApi.AnalyticsHub.V1.Model.AnalyticsHubSubscriptionInfo.t() | nil,
          :bigqueryConfig => GoogleApi.AnalyticsHub.V1.Model.BigQueryConfig.t() | nil,
          :cloudStorageConfig => GoogleApi.AnalyticsHub.V1.Model.CloudStorageConfig.t() | nil,
          :deadLetterPolicy => GoogleApi.AnalyticsHub.V1.Model.DeadLetterPolicy.t() | nil,
          :detached => boolean() | nil,
          :enableExactlyOnceDelivery => boolean() | nil,
          :enableMessageOrdering => boolean() | nil,
          :expirationPolicy => GoogleApi.AnalyticsHub.V1.Model.ExpirationPolicy.t() | nil,
          :filter => String.t() | nil,
          :labels => map() | nil,
          :messageRetentionDuration => String.t() | nil,
          :messageTransforms => list(GoogleApi.AnalyticsHub.V1.Model.MessageTransform.t()) | nil,
          :name => String.t() | nil,
          :pushConfig => GoogleApi.AnalyticsHub.V1.Model.PushConfig.t() | nil,
          :retainAckedMessages => boolean() | nil,
          :retryPolicy => GoogleApi.AnalyticsHub.V1.Model.RetryPolicy.t() | nil,
          :state => String.t() | nil,
          :topicMessageRetentionDuration => String.t() | nil
        }

  field(:ackDeadlineSeconds)

  field(:analyticsHubSubscriptionInfo,
    as: GoogleApi.AnalyticsHub.V1.Model.AnalyticsHubSubscriptionInfo
  )

  field(:bigqueryConfig, as: GoogleApi.AnalyticsHub.V1.Model.BigQueryConfig)
  field(:cloudStorageConfig, as: GoogleApi.AnalyticsHub.V1.Model.CloudStorageConfig)
  field(:deadLetterPolicy, as: GoogleApi.AnalyticsHub.V1.Model.DeadLetterPolicy)
  field(:detached)
  field(:enableExactlyOnceDelivery)
  field(:enableMessageOrdering)
  field(:expirationPolicy, as: GoogleApi.AnalyticsHub.V1.Model.ExpirationPolicy)
  field(:filter)
  field(:labels, type: :map)
  field(:messageRetentionDuration)
  field(:messageTransforms, as: GoogleApi.AnalyticsHub.V1.Model.MessageTransform, type: :list)
  field(:name)
  field(:pushConfig, as: GoogleApi.AnalyticsHub.V1.Model.PushConfig)
  field(:retainAckedMessages)
  field(:retryPolicy, as: GoogleApi.AnalyticsHub.V1.Model.RetryPolicy)
  field(:state)
  field(:topicMessageRetentionDuration)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsHub.V1.Model.GooglePubsubV1Subscription do
  def decode(value, options) do
    GoogleApi.AnalyticsHub.V1.Model.GooglePubsubV1Subscription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsHub.V1.Model.GooglePubsubV1Subscription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
