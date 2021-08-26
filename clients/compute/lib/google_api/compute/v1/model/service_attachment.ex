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

defmodule GoogleApi.Compute.V1.Model.ServiceAttachment do
  @moduledoc """
  Represents a ServiceAttachment resource. A service attachment represents a service that a producer has exposed. It encapsulates the load balancer which fronts the service runs and a list of NAT IP ranges that the producers uses to represent the consumers connecting to the service. next tag = 20

  ## Attributes

  *   `connectedEndpoints` (*type:* `list(GoogleApi.Compute.V1.Model.ServiceAttachmentConnectedEndpoint.t)`, *default:* `nil`) - [Output Only] An array of connections for all the consumers connected to this service attachment.
  *   `connectionPreference` (*type:* `String.t`, *default:* `nil`) - The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  *   `consumerAcceptLists` (*type:* `list(GoogleApi.Compute.V1.Model.ServiceAttachmentConsumerProjectLimit.t)`, *default:* `nil`) - Projects that are allowed to connect to this service attachment.
  *   `consumerRejectLists` (*type:* `list(String.t)`, *default:* `nil`) - Projects that are not allowed to connect to this service attachment. The project can be specified using its id or number.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `enableProxyProtocol` (*type:* `boolean()`, *default:* `nil`) - If true, enable the proxy protocol which is for supplying client TCP/IP address data in TCP connections that traverse proxies on their way to destination servers.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a ServiceAttachment. An up-to-date fingerprint must be provided in order to patch/update the ServiceAttachment; otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the ServiceAttachment.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource type. The server generates this identifier.
  *   `kind` (*type:* `String.t`, *default:* `compute#serviceAttachment`) - [Output Only] Type of the resource. Always compute#serviceAttachment for service attachments.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `natSubnets` (*type:* `list(String.t)`, *default:* `nil`) - An array of URLs where each entry is the URL of a subnet provided by the service producer to use for NAT in this service attachment.
  *   `producerForwardingRule` (*type:* `String.t`, *default:* `nil`) - The URL of a forwarding rule with loadBalancingScheme INTERNAL* that is serving the endpoint identified by this service attachment.
  *   `pscServiceAttachmentId` (*type:* `GoogleApi.Compute.V1.Model.Uint128.t`, *default:* `nil`) - [Output Only] An 128-bit global unique ID of the PSC service attachment.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the service attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `targetService` (*type:* `String.t`, *default:* `nil`) - The URL of a service serving the endpoint identified by this service attachment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectedEndpoints =>
            list(GoogleApi.Compute.V1.Model.ServiceAttachmentConnectedEndpoint.t()) | nil,
          :connectionPreference => String.t() | nil,
          :consumerAcceptLists =>
            list(GoogleApi.Compute.V1.Model.ServiceAttachmentConsumerProjectLimit.t()) | nil,
          :consumerRejectLists => list(String.t()) | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :enableProxyProtocol => boolean() | nil,
          :fingerprint => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :natSubnets => list(String.t()) | nil,
          :producerForwardingRule => String.t() | nil,
          :pscServiceAttachmentId => GoogleApi.Compute.V1.Model.Uint128.t() | nil,
          :region => String.t() | nil,
          :selfLink => String.t() | nil,
          :targetService => String.t() | nil
        }

  field(:connectedEndpoints,
    as: GoogleApi.Compute.V1.Model.ServiceAttachmentConnectedEndpoint,
    type: :list
  )

  field(:connectionPreference)

  field(:consumerAcceptLists,
    as: GoogleApi.Compute.V1.Model.ServiceAttachmentConsumerProjectLimit,
    type: :list
  )

  field(:consumerRejectLists, type: :list)
  field(:creationTimestamp)
  field(:description)
  field(:enableProxyProtocol)
  field(:fingerprint)
  field(:id)
  field(:kind)
  field(:name)
  field(:natSubnets, type: :list)
  field(:producerForwardingRule)
  field(:pscServiceAttachmentId, as: GoogleApi.Compute.V1.Model.Uint128)
  field(:region)
  field(:selfLink)
  field(:targetService)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ServiceAttachment do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ServiceAttachment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ServiceAttachment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
