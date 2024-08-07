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

defmodule GoogleApi.Domains.V1beta1.Model.RRSetRoutingPolicy do
  @moduledoc """
  A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.

  ## Attributes

  *   `geo` (*type:* `GoogleApi.Domains.V1beta1.Model.GeoPolicy.t`, *default:* `nil`) - 
  *   `geoPolicy` (*type:* `GoogleApi.Domains.V1beta1.Model.GeoPolicy.t`, *default:* `nil`) - 
  *   `healthCheck` (*type:* `String.t`, *default:* `nil`) - The selfLink attribute of the HealthCheck resource to use for this RRSetRoutingPolicy. https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks
  *   `primaryBackup` (*type:* `GoogleApi.Domains.V1beta1.Model.PrimaryBackupPolicy.t`, *default:* `nil`) - 
  *   `wrr` (*type:* `GoogleApi.Domains.V1beta1.Model.WrrPolicy.t`, *default:* `nil`) - 
  *   `wrrPolicy` (*type:* `GoogleApi.Domains.V1beta1.Model.WrrPolicy.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :geo => GoogleApi.Domains.V1beta1.Model.GeoPolicy.t() | nil,
          :geoPolicy => GoogleApi.Domains.V1beta1.Model.GeoPolicy.t() | nil,
          :healthCheck => String.t() | nil,
          :primaryBackup => GoogleApi.Domains.V1beta1.Model.PrimaryBackupPolicy.t() | nil,
          :wrr => GoogleApi.Domains.V1beta1.Model.WrrPolicy.t() | nil,
          :wrrPolicy => GoogleApi.Domains.V1beta1.Model.WrrPolicy.t() | nil
        }

  field(:geo, as: GoogleApi.Domains.V1beta1.Model.GeoPolicy)
  field(:geoPolicy, as: GoogleApi.Domains.V1beta1.Model.GeoPolicy)
  field(:healthCheck)
  field(:primaryBackup, as: GoogleApi.Domains.V1beta1.Model.PrimaryBackupPolicy)
  field(:wrr, as: GoogleApi.Domains.V1beta1.Model.WrrPolicy)
  field(:wrrPolicy, as: GoogleApi.Domains.V1beta1.Model.WrrPolicy)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1beta1.Model.RRSetRoutingPolicy do
  def decode(value, options) do
    GoogleApi.Domains.V1beta1.Model.RRSetRoutingPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1beta1.Model.RRSetRoutingPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
