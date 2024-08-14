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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Featurestore do
  @moduledoc """
  Vertex AI Feature Store provides a centralized repository for organizing, storing, and serving ML features. The Featurestore is a top-level container for your features and their values.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Featurestore was created.
  *   `encryptionSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t`, *default:* `nil`) - Optional. Customer-managed encryption key spec for data storage. If set, both of the online and offline data storage will be secured by this key.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels with user-defined metadata to organize your Featurestore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Featurestore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the Featurestore. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}`
  *   `onlineServingConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig.t`, *default:* `nil`) - Optional. Config for online storage resources. The field should not co-exist with the field of `OnlineStoreReplicationConfig`. If both of it and OnlineStoreReplicationConfig are unset, the feature store will not have an online store and cannot be used for online serving.
  *   `onlineStorageTtlDays` (*type:* `integer()`, *default:* `nil`) - Optional. TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than `online_storage_ttl_days` since the feature generation time. Note that `online_storage_ttl_days` should be less than or equal to `offline_storage_ttl_days` for each EntityType under a featurestore. If not set, default to 4000 days
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the featurestore.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Featurestore was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :encryptionSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :onlineServingConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig.t()
            | nil,
          :onlineStorageTtlDays => integer() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:encryptionSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec)
  field(:etag)
  field(:labels, type: :map)
  field(:name)

  field(:onlineServingConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig
  )

  field(:onlineStorageTtlDays)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Featurestore do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Featurestore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Featurestore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
