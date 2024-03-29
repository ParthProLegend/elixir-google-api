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

defmodule GoogleApi.GKEHub.V1.Model.ServiceMeshCondition do
  @moduledoc """
  Condition being reported.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the condition which describes the condition recognizable to the user.
  *   `details` (*type:* `String.t`, *default:* `nil`) - A short summary about the issue.
  *   `documentationLink` (*type:* `String.t`, *default:* `nil`) - Links contains actionable information.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - Severity level of the condition.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :details => String.t() | nil,
          :documentationLink => String.t() | nil,
          :severity => String.t() | nil
        }

  field(:code)
  field(:details)
  field(:documentationLink)
  field(:severity)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ServiceMeshCondition do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ServiceMeshCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ServiceMeshCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
