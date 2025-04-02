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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata do
  @moduledoc """
  Usage metadata about response(s).

  ## Attributes

  *   `cacheTokensDetails` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount.t)`, *default:* `nil`) - Output only. List of modalities of the cached content in the request input.
  *   `cachedContentTokenCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of tokens in the cached part in the input (the cached content).
  *   `candidatesTokenCount` (*type:* `integer()`, *default:* `nil`) - Number of tokens in the response(s).
  *   `candidatesTokensDetails` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount.t)`, *default:* `nil`) - Output only. List of modalities that were returned in the response.
  *   `promptTokenCount` (*type:* `integer()`, *default:* `nil`) - Number of tokens in the request. When `cached_content` is set, this is still the total effective prompt size meaning this includes the number of tokens in the cached content.
  *   `promptTokensDetails` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount.t)`, *default:* `nil`) - Output only. List of modalities that were processed in the request input.
  *   `thoughtsTokenCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of tokens present in thoughts output.
  *   `toolUsePromptTokenCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of tokens present in tool-use prompt(s).
  *   `toolUsePromptTokensDetails` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount.t)`, *default:* `nil`) - Output only. List of modalities that were processed for tool-use request inputs.
  *   `totalTokenCount` (*type:* `integer()`, *default:* `nil`) - Total token count for prompt, response candidates, and tool-use prompts (if present).
  *   `trafficType` (*type:* `String.t`, *default:* `nil`) - Output only. Traffic type. This shows whether a request consumes Pay-As-You-Go or Provisioned Throughput quota.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cacheTokensDetails =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount.t())
            | nil,
          :cachedContentTokenCount => integer() | nil,
          :candidatesTokenCount => integer() | nil,
          :candidatesTokensDetails =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount.t())
            | nil,
          :promptTokenCount => integer() | nil,
          :promptTokensDetails =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount.t())
            | nil,
          :thoughtsTokenCount => integer() | nil,
          :toolUsePromptTokenCount => integer() | nil,
          :toolUsePromptTokensDetails =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount.t())
            | nil,
          :totalTokenCount => integer() | nil,
          :trafficType => String.t() | nil
        }

  field(:cacheTokensDetails,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount,
    type: :list
  )

  field(:cachedContentTokenCount)
  field(:candidatesTokenCount)

  field(:candidatesTokensDetails,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount,
    type: :list
  )

  field(:promptTokenCount)

  field(:promptTokensDetails,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount,
    type: :list
  )

  field(:thoughtsTokenCount)
  field(:toolUsePromptTokenCount)

  field(:toolUsePromptTokensDetails,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModalityTokenCount,
    type: :list
  )

  field(:totalTokenCount)
  field(:trafficType)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
