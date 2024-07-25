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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Tool do
  @moduledoc """
  Tool details that the model may use to generate response. A `Tool` is a piece of code that enables the system to interact with external systems to perform an action, or set of actions, outside of knowledge and scope of the model. A Tool object should contain exactly one type of Tool (e.g FunctionDeclaration, Retrieval or GoogleSearchRetrieval).

  ## Attributes

  *   `functionDeclarations` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionDeclaration.t)`, *default:* `nil`) - Optional. Function tool type. One or more function declarations to be passed to the model along with the current user query. Model may decide to call a subset of these functions by populating FunctionCall in the response. User should provide a FunctionResponse for each function call in the next turn. Based on the function responses, Model will generate the final response back to the user. Maximum 64 function declarations can be provided.
  *   `googleSearchRetrieval` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GoogleSearchRetrieval.t`, *default:* `nil`) - Optional. GoogleSearchRetrieval tool type. Specialized retrieval tool that is powered by Google search.
  *   `retrieval` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Retrieval.t`, *default:* `nil`) - Optional. Retrieval tool type. System will always execute the provided retrieval tool(s) to get external knowledge to answer the prompt. Retrieval results are presented to the model for generation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :functionDeclarations =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionDeclaration.t())
            | nil,
          :googleSearchRetrieval =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GoogleSearchRetrieval.t() | nil,
          :retrieval => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Retrieval.t() | nil
        }

  field(:functionDeclarations,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionDeclaration,
    type: :list
  )

  field(:googleSearchRetrieval,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GoogleSearchRetrieval
  )

  field(:retrieval, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Retrieval)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Tool do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Tool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Tool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
