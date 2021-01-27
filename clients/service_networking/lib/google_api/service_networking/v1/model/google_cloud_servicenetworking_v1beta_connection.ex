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

defmodule GoogleApi.ServiceNetworking.V1.Model.GoogleCloudServicenetworkingV1betaConnection do
  @moduledoc """
  Represents a private connection resource. A private connection is implemented as a VPC Network Peering connection between a service producer's VPC network and a service consumer's VPC network.

  ## Attributes

  *   `network` (*type:* `String.t`, *default:* `nil`) - The name of service consumer's VPC network that's connected with service producer network, in the following format: `projects/{project}/global/networks/{network}`. `{project}` is a project number, such as in `12345` that includes the VPC service consumer's VPC network. `{network}` is the name of the service consumer's VPC network.
  *   `peering` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the VPC Network Peering connection that was created by the service producer.
  *   `reservedPeeringRanges` (*type:* `list(String.t)`, *default:* `nil`) - The name of one or more allocated IP address ranges for this service producer of type `PEERING`. Note that invoking this method with a different range when connection is already established will not modify already provisioned service producer subnetworks.
  *   `service` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the peering service that's associated with this connection, in the following format: `services/{service name}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :network => String.t(),
          :peering => String.t(),
          :reservedPeeringRanges => list(String.t()),
          :service => String.t()
        }

  field(:network)
  field(:peering)
  field(:reservedPeeringRanges, type: :list)
  field(:service)
end

defimpl Poison.Decoder,
  for: GoogleApi.ServiceNetworking.V1.Model.GoogleCloudServicenetworkingV1betaConnection do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.GoogleCloudServicenetworkingV1betaConnection.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ServiceNetworking.V1.Model.GoogleCloudServicenetworkingV1betaConnection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
