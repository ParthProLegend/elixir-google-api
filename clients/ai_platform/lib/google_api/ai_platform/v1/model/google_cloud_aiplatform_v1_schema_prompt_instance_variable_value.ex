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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptInstanceVariableValue do
  @moduledoc """
  The value of a variable in prompt.

  ## Attributes

  *   `partList` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPartList.t`, *default:* `nil`) - The parts of the variable value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :partList =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPartList.t()
            | nil
        }

  field(:partList,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPartList
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptInstanceVariableValue do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptInstanceVariableValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptInstanceVariableValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
