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

defmodule GoogleApi.AndroidManagement.V1.Model.WifiRoamingSetting do
  @moduledoc """
  Wi-Fi roaming setting.

  ## Attributes

  *   `wifiRoamingMode` (*type:* `String.t`, *default:* `nil`) - Required. Wi-Fi roaming mode for the specified SSID.
  *   `wifiSsid` (*type:* `String.t`, *default:* `nil`) - Required. SSID of the Wi-Fi network.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :wifiRoamingMode => String.t() | nil,
          :wifiSsid => String.t() | nil
        }

  field(:wifiRoamingMode)
  field(:wifiSsid)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.WifiRoamingSetting do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.WifiRoamingSetting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.WifiRoamingSetting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
