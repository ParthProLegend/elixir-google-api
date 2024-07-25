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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInstance do
  @moduledoc """
  Spec for question answering helpfulness instance.

  ## Attributes

  *   `context` (*type:* `String.t`, *default:* `nil`) - Optional. Text provided as context to answer the question.
  *   `instruction` (*type:* `String.t`, *default:* `nil`) - Required. The question asked and other instruction in the inference prompt.
  *   `prediction` (*type:* `String.t`, *default:* `nil`) - Required. Output of the evaluated model.
  *   `reference` (*type:* `String.t`, *default:* `nil`) - Optional. Ground truth used to compare against the prediction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :context => String.t() | nil,
          :instruction => String.t() | nil,
          :prediction => String.t() | nil,
          :reference => String.t() | nil
        }

  field(:context)
  field(:instruction)
  field(:prediction)
  field(:reference)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInstance do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInstance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
