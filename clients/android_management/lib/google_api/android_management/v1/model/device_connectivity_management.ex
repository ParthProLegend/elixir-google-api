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

defmodule GoogleApi.AndroidManagement.V1.Model.DeviceConnectivityManagement do
  @moduledoc """
  Covers controls for device connectivity such as Wi-Fi, USB data access, keyboard/mouse connections, and more.

  ## Attributes

  *   `configureWifi` (*type:* `String.t`, *default:* `nil`) - Controls Wi-Fi configuring privileges. Based on the option set, user will have either full or limited or no control in configuring Wi-Fi networks.
  *   `tetheringSettings` (*type:* `String.t`, *default:* `nil`) - Controls tethering settings. Based on the value set, the user is partially or fully disallowed from using different forms of tethering.
  *   `usbDataAccess` (*type:* `String.t`, *default:* `nil`) - Controls what files and/or data can be transferred via USB. Supported only on company-owned devices.
  *   `wifiDirectSettings` (*type:* `String.t`, *default:* `nil`) - Controls configuring and using Wi-Fi direct settings. Supported on company-owned devices running Android 13 and above.
  *   `wifiRoamingPolicy` (*type:* `GoogleApi.AndroidManagement.V1.Model.WifiRoamingPolicy.t`, *default:* `nil`) - Optional. Wi-Fi roaming policy.
  *   `wifiSsidPolicy` (*type:* `GoogleApi.AndroidManagement.V1.Model.WifiSsidPolicy.t`, *default:* `nil`) - Restrictions on which Wi-Fi SSIDs the device can connect to. Note that this does not affect which networks can be configured on the device. Supported on company-owned devices running Android 13 and above.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configureWifi => String.t() | nil,
          :tetheringSettings => String.t() | nil,
          :usbDataAccess => String.t() | nil,
          :wifiDirectSettings => String.t() | nil,
          :wifiRoamingPolicy => GoogleApi.AndroidManagement.V1.Model.WifiRoamingPolicy.t() | nil,
          :wifiSsidPolicy => GoogleApi.AndroidManagement.V1.Model.WifiSsidPolicy.t() | nil
        }

  field(:configureWifi)
  field(:tetheringSettings)
  field(:usbDataAccess)
  field(:wifiDirectSettings)
  field(:wifiRoamingPolicy, as: GoogleApi.AndroidManagement.V1.Model.WifiRoamingPolicy)
  field(:wifiSsidPolicy, as: GoogleApi.AndroidManagement.V1.Model.WifiSsidPolicy)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.DeviceConnectivityManagement do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.DeviceConnectivityManagement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.DeviceConnectivityManagement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
