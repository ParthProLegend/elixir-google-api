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

defmodule GoogleApi.AlertCenter.V1beta1.Model.Alert do
  @moduledoc """
  An alert affecting a customer.

  ## Attributes

  *   `alertId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier for the alert.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this alert was created.
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of the Google account of the customer.
  *   `data` (*type:* `map()`, *default:* `nil`) - Optional. The data associated with this alert, for example google.apps.alertcenter.type.DeviceCompromised.
  *   `deleted` (*type:* `boolean()`, *default:* `nil`) - Output only. `True` if this alert is marked for deletion.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The time the event that caused this alert ceased being active. If provided, the end time must not be earlier than the start time. If not provided, it indicates an ongoing alert.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of an alert from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform alert updates in order to avoid race conditions: An `etag` is returned in the response which contains alerts, and systems are expected to put that etag in the request to update alert to ensure that their change will be applied to the same version of the alert. If no `etag` is provided in the call to update alert, then the existing alert is overwritten blindly.
  *   `metadata` (*type:* `GoogleApi.AlertCenter.V1beta1.Model.AlertMetadata.t`, *default:* `nil`) - Output only. The metadata associated with this alert.
  *   `securityInvestigationToolLink` (*type:* `String.t`, *default:* `nil`) - Output only. An optional [Security Investigation Tool](https://support.google.com/a/answer/7575955) query for this alert.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Required. A unique identifier for the system that reported the alert. This is output only after alert is created. Supported sources are any of the following: * Google Operations * Mobile device management * Gmail phishing * Domain wide takeout * State sponsored attack * Google identity
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The time the event that caused this alert was started or detected.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The type of the alert. This is output only after alert is created. For a list of available alert types see [Google Workspace Alert types](/admin-sdk/alertcenter/reference/alert-types).
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this alert was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alertId => String.t(),
          :createTime => DateTime.t(),
          :customerId => String.t(),
          :data => map(),
          :deleted => boolean(),
          :endTime => DateTime.t(),
          :etag => String.t(),
          :metadata => GoogleApi.AlertCenter.V1beta1.Model.AlertMetadata.t(),
          :securityInvestigationToolLink => String.t(),
          :source => String.t(),
          :startTime => DateTime.t(),
          :type => String.t(),
          :updateTime => DateTime.t()
        }

  field(:alertId)
  field(:createTime, as: DateTime)
  field(:customerId)
  field(:data, type: :map)
  field(:deleted)
  field(:endTime, as: DateTime)
  field(:etag)
  field(:metadata, as: GoogleApi.AlertCenter.V1beta1.Model.AlertMetadata)
  field(:securityInvestigationToolLink)
  field(:source)
  field(:startTime, as: DateTime)
  field(:type)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.Alert do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.Alert.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.Alert do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
