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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Entitlement do
  @moduledoc """
  An entitlement is a representation of a customer's ability to use a service.

  ## Attributes

  *   `associationInfo` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1AssociationInfo.t`, *default:* `nil`) - Association information to other entitlements.
  *   `commitmentSettings` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1CommitmentSettings.t`, *default:* `nil`) - Commitment settings for a commitment-based Offer. Required for commitment based offers.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the entitlement is created.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of an entitlement in the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}.
  *   `offer` (*type:* `String.t`, *default:* `nil`) - Required. The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.
  *   `parameters` (*type:* `list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Parameter.t)`, *default:* `nil`) - Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. The response may include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. - max_units: The maximum assignable units for a flexible offer. - num_units: The total commitment for commitment-based offers.
  *   `provisionedService` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionedService.t`, *default:* `nil`) - Output only. Service provisioning details for the entitlement.
  *   `provisioningState` (*type:* `String.t`, *default:* `nil`) - Output only. Current provisioning state of the entitlement.
  *   `purchaseOrderId` (*type:* `String.t`, *default:* `nil`) - Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.
  *   `suspensionReasons` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Enumerable of all current suspension reasons for an entitlement.
  *   `trialSettings` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1TrialSettings.t`, *default:* `nil`) - Output only. Settings for trial offers.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the entitlement is updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :associationInfo =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1AssociationInfo.t() | nil,
          :commitmentSettings =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1CommitmentSettings.t() | nil,
          :createTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :offer => String.t() | nil,
          :parameters =>
            list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Parameter.t()) | nil,
          :provisionedService =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionedService.t() | nil,
          :provisioningState => String.t() | nil,
          :purchaseOrderId => String.t() | nil,
          :suspensionReasons => list(String.t()) | nil,
          :trialSettings =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1TrialSettings.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:associationInfo, as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1AssociationInfo)

  field(:commitmentSettings,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1CommitmentSettings
  )

  field(:createTime, as: DateTime)
  field(:name)
  field(:offer)

  field(:parameters,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Parameter,
    type: :list
  )

  field(:provisionedService,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionedService
  )

  field(:provisioningState)
  field(:purchaseOrderId)
  field(:suspensionReasons, type: :list)
  field(:trialSettings, as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1TrialSettings)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Entitlement do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Entitlement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Entitlement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
