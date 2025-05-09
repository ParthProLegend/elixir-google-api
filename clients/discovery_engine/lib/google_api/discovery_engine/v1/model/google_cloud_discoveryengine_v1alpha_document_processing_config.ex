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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig do
  @moduledoc """
  A singleton resource of DataStore. If it's empty when DataStore is created and DataStore is set to DataStore.ContentConfig.CONTENT_REQUIRED, the default parser will default to digital parser.

  ## Attributes

  *   `chunkingConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig.t`, *default:* `nil`) - Whether chunking mode is enabled.
  *   `defaultParsingConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig.t`, *default:* `nil`) - Configurations for default Document parser. If not specified, we will configure it as default DigitalParsingConfig, and the default parsing config will be applied to all file types for Document parsing.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The full resource name of the Document Processing Config. Format: `projects/*/locations/*/collections/*/dataStores/*/documentProcessingConfig`.
  *   `parsingConfigOverrides` (*type:* `%{optional(String.t) => GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig.t}`, *default:* `nil`) - Map from file type to override the default parsing configuration based on the file type. Supported keys: * `pdf`: Override parsing config for PDF files, either digital parsing, ocr parsing or layout parsing is supported. * `html`: Override parsing config for HTML files, only digital parsing and layout parsing are supported. * `docx`: Override parsing config for DOCX files, only digital parsing and layout parsing are supported. * `pptx`: Override parsing config for PPTX files, only digital parsing and layout parsing are supported. * `xlsm`: Override parsing config for XLSM files, only digital parsing and layout parsing are supported. * `xlsx`: Override parsing config for XLSX files, only digital parsing and layout parsing are supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chunkingConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig.t()
            | nil,
          :defaultParsingConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig.t()
            | nil,
          :name => String.t() | nil,
          :parsingConfigOverrides =>
            %{
              optional(String.t()) =>
                GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig.t()
            }
            | nil
        }

  field(:chunkingConfig,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig
  )

  field(:defaultParsingConfig,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig
  )

  field(:name)

  field(:parsingConfigOverrides,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig,
    type: :map
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
