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

defmodule GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcher do
  @moduledoc """
  The matcher that is based on node metadata presented by xDS clients.

  ## Attributes

  *   `metadataLabelMatchCriteria` (*type:* `String.t`, *default:* `nil`) - Specifies how matching should be done. Supported values are: MATCH_ANY: At least one of the Labels specified in the matcher should match the metadata presented by xDS client. MATCH_ALL: The metadata presented by the xDS client should contain all of the labels specified here. The selection is determined based on the best match. For example, suppose there are three EndpointPolicy resources P1, P2 and P3 and if P1 has a the matcher as MATCH_ANY , P2 has MATCH_ALL , and P3 has MATCH_ALL . If a client with label connects, the config from P1 will be selected. If a client with label connects, the config from P2 will be selected. If a client with label connects, the config from P3 will be selected. If there is more than one best match, (for example, if a config P4 with selector exists and if a client with label connects), pick up the one with older creation time.
  *   `metadataLabels` (*type:* `list(GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcherMetadataLabels.t)`, *default:* `nil`) - The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list can have at most 64 entries. The list can be empty if the match criteria is MATCH_ANY, to specify a wildcard match (i.e this matches any client).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadataLabelMatchCriteria => String.t() | nil,
          :metadataLabels =>
            list(
              GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcherMetadataLabels.t()
            )
            | nil
        }

  field(:metadataLabelMatchCriteria)

  field(:metadataLabels,
    as: GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcherMetadataLabels,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcher do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcher.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
