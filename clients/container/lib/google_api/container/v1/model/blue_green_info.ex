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

defmodule GoogleApi.Container.V1.Model.BlueGreenInfo do
  @moduledoc """
  Information relevant to blue-green upgrade.

  ## Attributes

  *   `blueInstanceGroupUrls` (*type:* `list(String.t)`, *default:* `nil`) - The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with blue pool.
  *   `bluePoolDeletionStartTime` (*type:* `String.t`, *default:* `nil`) - Time to start deleting blue pool to complete blue-green upgrade, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  *   `greenInstanceGroupUrls` (*type:* `list(String.t)`, *default:* `nil`) - The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with green pool.
  *   `greenPoolVersion` (*type:* `String.t`, *default:* `nil`) - Version of green pool.
  *   `phase` (*type:* `String.t`, *default:* `nil`) - Current blue-green upgrade phase.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blueInstanceGroupUrls => list(String.t()) | nil,
          :bluePoolDeletionStartTime => String.t() | nil,
          :greenInstanceGroupUrls => list(String.t()) | nil,
          :greenPoolVersion => String.t() | nil,
          :phase => String.t() | nil
        }

  field(:blueInstanceGroupUrls, type: :list)
  field(:bluePoolDeletionStartTime)
  field(:greenInstanceGroupUrls, type: :list)
  field(:greenPoolVersion)
  field(:phase)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.BlueGreenInfo do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.BlueGreenInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.BlueGreenInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
