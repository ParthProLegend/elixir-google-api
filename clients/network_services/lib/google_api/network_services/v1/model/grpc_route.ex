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

defmodule GoogleApi.NetworkServices.V1.Model.GrpcRoute do
  @moduledoc """
  GrpcRoute is the resource defining how gRPC traffic routed by a Mesh or Gateway resource is routed.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A free-text description of the resource. Max length 1024 characters.
  *   `gateways` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Gateways defines a list of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  *   `hostnames` (*type:* `list(String.t)`, *default:* `nil`) - Required. Service hostnames with an optional port for which this route describes traffic. Format: [:] Hostname is the fully qualified domain name of a network host. This matches the RFC 1123 definition of a hostname with 2 notable exceptions: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateway must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same route, it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`. If a port is specified, then gRPC clients must use the channel URI with the port to match this rule (i.e. "xds:///service:123"), otherwise they must supply the URI without a port (i.e. "xds:///service").
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Set of label tags associated with the GrpcRoute resource.
  *   `meshes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Meshes defines a list of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/`
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the GrpcRoute resource. It matches pattern `projects/*/locations/global/grpcRoutes/`
  *   `rules` (*type:* `list(GoogleApi.NetworkServices.V1.Model.GrpcRouteRouteRule.t)`, *default:* `nil`) - Required. A list of detailed rules defining how to route traffic. Within a single GrpcRoute, the GrpcRoute.RouteAction associated with the first matching GrpcRoute.RouteRule will be executed. At least one rule must be supplied.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Output only. Server-defined URL of this resource
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :gateways => list(String.t()) | nil,
          :hostnames => list(String.t()) | nil,
          :labels => map() | nil,
          :meshes => list(String.t()) | nil,
          :name => String.t() | nil,
          :rules => list(GoogleApi.NetworkServices.V1.Model.GrpcRouteRouteRule.t()) | nil,
          :selfLink => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:gateways, type: :list)
  field(:hostnames, type: :list)
  field(:labels, type: :map)
  field(:meshes, type: :list)
  field(:name)
  field(:rules, as: GoogleApi.NetworkServices.V1.Model.GrpcRouteRouteRule, type: :list)
  field(:selfLink)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.GrpcRoute do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.GrpcRoute.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.GrpcRoute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
