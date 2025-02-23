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

defmodule GoogleApi.AnalyticsHub.V1.Model.DeadLetterPolicy do
  @moduledoc """
  Dead lettering is done on a best effort basis. The same message might be dead lettered multiple times. If validation on any of the fields fails at subscription creation/updation, the create/update subscription request will fail.

  ## Attributes

  *   `deadLetterTopic` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the topic to which dead letter messages should be published. Format is `projects/{project}/topics/{topic}`.The Pub/Sub service account associated with the enclosing subscription's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Publish() to this topic. The operation will fail if the topic does not exist. Users should ensure that there is a subscription attached to this topic since messages published to a topic with no subscriptions are lost.
  *   `maxDeliveryAttempts` (*type:* `integer()`, *default:* `nil`) - Optional. The maximum number of delivery attempts for any message. The value must be between 5 and 100. The number of delivery attempts is defined as 1 + (the sum of number of NACKs and number of times the acknowledgment deadline has been exceeded for the message). A NACK is any call to ModifyAckDeadline with a 0 deadline. Note that client libraries may automatically extend ack_deadlines. This field will be honored on a best effort basis. If this parameter is 0, a default value of 5 is used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deadLetterTopic => String.t() | nil,
          :maxDeliveryAttempts => integer() | nil
        }

  field(:deadLetterTopic)
  field(:maxDeliveryAttempts)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsHub.V1.Model.DeadLetterPolicy do
  def decode(value, options) do
    GoogleApi.AnalyticsHub.V1.Model.DeadLetterPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsHub.V1.Model.DeadLetterPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
