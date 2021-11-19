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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Participant do
  @moduledoc """
  Represents a conversation participant (human agent, virtual agent, end-user).

  ## Attributes

  *   `documentsMetadataFilters` (*type:* `map()`, *default:* `nil`) - Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  *   `role` (*type:* `String.t`, *default:* `nil`) - Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  *   `sipRecordingMediaLabel` (*type:* `String.t`, *default:* `nil`) - Optional. Label applied to streams representing this participant in SIPREC XML metadata and SDP. This is used to assign transcriptions from that media stream to this participant. This field can be updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentsMetadataFilters => map() | nil,
          :name => String.t() | nil,
          :role => String.t() | nil,
          :sipRecordingMediaLabel => String.t() | nil
        }

  field(:documentsMetadataFilters, type: :map)
  field(:name)
  field(:role)
  field(:sipRecordingMediaLabel)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Participant do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Participant.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Participant do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
