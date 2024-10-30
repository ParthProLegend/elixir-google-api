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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecStructuredPrompt do
  @moduledoc """
  Prompt variation that stores preambles in separate fields.

  ## Attributes

  *   `context` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t`, *default:* `nil`) - Preamble: The context of the prompt.
  *   `examples` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPartList.t)`, *default:* `nil`) - Preamble: A set of examples for expected model response.
  *   `infillPrefix` (*type:* `String.t`, *default:* `nil`) - Preamble: For infill prompt, the prefix before expected model response.
  *   `infillSuffix` (*type:* `String.t`, *default:* `nil`) - Preamble: For infill prompt, the suffix after expected model response.
  *   `inputPrefixes` (*type:* `list(String.t)`, *default:* `nil`) - Preamble: The input prefixes before each example input.
  *   `outputPrefixes` (*type:* `list(String.t)`, *default:* `nil`) - Preamble: The output prefixes before each example output.
  *   `predictionInputs` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPartList.t)`, *default:* `nil`) - Preamble: The input test data for prediction. Each PartList in this field represents one text-only input set for a single model request.
  *   `promptMessage` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage.t`, *default:* `nil`) - The prompt message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :context => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t() | nil,
          :examples =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPartList.t()
            )
            | nil,
          :infillPrefix => String.t() | nil,
          :infillSuffix => String.t() | nil,
          :inputPrefixes => list(String.t()) | nil,
          :outputPrefixes => list(String.t()) | nil,
          :predictionInputs =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPartList.t()
            )
            | nil,
          :promptMessage =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage.t()
            | nil
        }

  field(:context, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content)

  field(:examples,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPartList,
    type: :list
  )

  field(:infillPrefix)
  field(:infillSuffix)
  field(:inputPrefixes, type: :list)
  field(:outputPrefixes, type: :list)

  field(:predictionInputs,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPartList,
    type: :list
  )

  field(:promptMessage,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecStructuredPrompt do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecStructuredPrompt.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecStructuredPrompt do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
