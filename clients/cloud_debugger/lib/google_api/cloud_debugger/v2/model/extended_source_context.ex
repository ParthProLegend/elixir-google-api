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

defmodule GoogleApi.CloudDebugger.V2.Model.ExtendedSourceContext do
  @moduledoc """
  An ExtendedSourceContext is a SourceContext combined with additional details describing the context.

  ## Attributes

  *   `context` (*type:* `GoogleApi.CloudDebugger.V2.Model.SourceContext.t`, *default:* `nil`) - Any source context.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels with user defined metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :context => GoogleApi.CloudDebugger.V2.Model.SourceContext.t() | nil,
          :labels => map() | nil
        }

  field(:context, as: GoogleApi.CloudDebugger.V2.Model.SourceContext)
  field(:labels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.ExtendedSourceContext do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.ExtendedSourceContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.ExtendedSourceContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
