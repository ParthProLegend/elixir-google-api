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

defmodule GoogleApi.Content.V2.Model.Service do
  @moduledoc """


  ## Attributes

  *   `active` (*type:* `boolean()`, *default:* `nil`) - A boolean exposing the active status of the shipping service. Required.
  *   `currency` (*type:* `String.t`, *default:* `nil`) - The CLDR code of the currency to which this service applies. Must match that of the prices in rate groups.
  *   `deliveryCountry` (*type:* `String.t`, *default:* `nil`) - The CLDR territory code of the country to which the service applies. Required.
  *   `deliveryTime` (*type:* `GoogleApi.Content.V2.Model.DeliveryTime.t`, *default:* `nil`) - Time spent in various aspects from order to the delivery of the product. Required.
  *   `eligibility` (*type:* `String.t`, *default:* `nil`) - Eligibility for this service.
  *   `minimumOrderValue` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Minimum order value for this service. If set, indicates that customers will have to spend at least this amount. All prices within a service must have the same currency.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Free-form name of the service. Must be unique within target account. Required.
  *   `pickupService` (*type:* `GoogleApi.Content.V2.Model.PickupCarrierService.t`, *default:* `nil`) - The carrier-service pair delivering items to collection points. The list of supported pickup services can be retrieved via the getSupportedPickupServices method. Required if and only if the service delivery type is pickup.
  *   `rateGroups` (*type:* `list(GoogleApi.Content.V2.Model.RateGroup.t)`, *default:* `nil`) - Shipping rate group definitions. Only the last one is allowed to have an empty applicableShippingLabels, which means "everything else". The other applicableShippingLabels must not overlap.
  *   `shipmentType` (*type:* `String.t`, *default:* `nil`) - Type of locations this service ships orders to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :active => boolean(),
          :currency => String.t(),
          :deliveryCountry => String.t(),
          :deliveryTime => GoogleApi.Content.V2.Model.DeliveryTime.t(),
          :eligibility => String.t(),
          :minimumOrderValue => GoogleApi.Content.V2.Model.Price.t(),
          :name => String.t(),
          :pickupService => GoogleApi.Content.V2.Model.PickupCarrierService.t(),
          :rateGroups => list(GoogleApi.Content.V2.Model.RateGroup.t()),
          :shipmentType => String.t()
        }

  field(:active)
  field(:currency)
  field(:deliveryCountry)
  field(:deliveryTime, as: GoogleApi.Content.V2.Model.DeliveryTime)
  field(:eligibility)
  field(:minimumOrderValue, as: GoogleApi.Content.V2.Model.Price)
  field(:name)
  field(:pickupService, as: GoogleApi.Content.V2.Model.PickupCarrierService)
  field(:rateGroups, as: GoogleApi.Content.V2.Model.RateGroup, type: :list)
  field(:shipmentType)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Service do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
