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

defmodule GoogleApi.VMwareEngine.V1.Model.ExternalAddress do
  @moduledoc """
  Represents an allocated external IP address and its corresponding internal IP address in a private cloud.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this resource.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided description for this resource.
  *   `externalIp` (*type:* `String.t`, *default:* `nil`) - Output only. The external IP address of a workload VM.
  *   `internalIp` (*type:* `String.t`, *default:* `nil`) - The internal IP address of a workload VM.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier. The resource name of this external IP address. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the resource.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System-generated unique identifier for the resource.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update time of this resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :externalIp => String.t() | nil,
          :internalIp => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:externalIp)
  field(:internalIp)
  field(:name)
  field(:state)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.ExternalAddress do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.ExternalAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.ExternalAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
