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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInstance do
  @moduledoc """
  Spec for pairwise question answering quality instance.

  ## Attributes

  *   `baselinePrediction` (*type:* `String.t`, *default:* `nil`) - Required. Output of the baseline model.
  *   `context` (*type:* `String.t`, *default:* `nil`) - Required. Text to answer the question.
  *   `instruction` (*type:* `String.t`, *default:* `nil`) - Required. Question Answering prompt for LLM.
  *   `prediction` (*type:* `String.t`, *default:* `nil`) - Required. Output of the candidate model.
  *   `reference` (*type:* `String.t`, *default:* `nil`) - Optional. Ground truth used to compare against the prediction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baselinePrediction => String.t() | nil,
          :context => String.t() | nil,
          :instruction => String.t() | nil,
          :prediction => String.t() | nil,
          :reference => String.t() | nil
        }

  field(:baselinePrediction)
  field(:context)
  field(:instruction)
  field(:prediction)
  field(:reference)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInstance do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInstance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
