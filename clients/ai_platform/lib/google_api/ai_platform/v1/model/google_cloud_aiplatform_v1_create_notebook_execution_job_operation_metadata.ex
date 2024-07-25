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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateNotebookExecutionJobOperationMetadata do
  @moduledoc """
  Metadata information for NotebookService.CreateNotebookExecutionJob.

  ## Attributes

  *   `genericMetadata` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenericOperationMetadata.t`, *default:* `nil`) - The operation generic information.
  *   `progressMessage` (*type:* `String.t`, *default:* `nil`) - A human-readable message that shows the intermediate progress details of NotebookRuntime.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :genericMetadata =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenericOperationMetadata.t()
            | nil,
          :progressMessage => String.t() | nil
        }

  field(:genericMetadata,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenericOperationMetadata
  )

  field(:progressMessage)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateNotebookExecutionJobOperationMetadata do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateNotebookExecutionJobOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateNotebookExecutionJobOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
