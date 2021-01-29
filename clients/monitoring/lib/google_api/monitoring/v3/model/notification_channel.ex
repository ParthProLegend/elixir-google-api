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

defmodule GoogleApi.Monitoring.V3.Model.NotificationChannel do
  @moduledoc """
  A NotificationChannel is a medium through which an alert is delivered when a policy violation is detected. Examples of channels include email, SMS, and third-party messaging applications. Fields containing sensitive information like authentication tokens or contact info are only partially populated on retrieval.

  ## Attributes

  *   `creationRecord` (*type:* `GoogleApi.Monitoring.V3.Model.MutationRecord.t`, *default:* `nil`) - Record of the creation of this channel.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.
  *   `mutationRecords` (*type:* `list(GoogleApi.Monitoring.V3.Model.MutationRecord.t)`, *default:* `nil`) - Records of the modification of this channel.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  *   `verificationStatus` (*type:* `String.t`, *default:* `nil`) - Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationRecord => GoogleApi.Monitoring.V3.Model.MutationRecord.t(),
          :description => String.t(),
          :displayName => String.t(),
          :enabled => boolean(),
          :labels => map(),
          :mutationRecords => list(GoogleApi.Monitoring.V3.Model.MutationRecord.t()),
          :name => String.t(),
          :type => String.t(),
          :userLabels => map(),
          :verificationStatus => String.t()
        }

  field(:creationRecord, as: GoogleApi.Monitoring.V3.Model.MutationRecord)
  field(:description)
  field(:displayName)
  field(:enabled)
  field(:labels, type: :map)
  field(:mutationRecords, as: GoogleApi.Monitoring.V3.Model.MutationRecord, type: :list)
  field(:name)
  field(:type)
  field(:userLabels, type: :map)
  field(:verificationStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.NotificationChannel do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.NotificationChannel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.NotificationChannel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
