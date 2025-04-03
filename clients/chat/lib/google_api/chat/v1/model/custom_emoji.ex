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

defmodule GoogleApi.Chat.V1.Model.CustomEmoji do
  @moduledoc """
  Represents a [custom emoji](https://support.google.com/chat/answer/12800149).

  ## Attributes

  *   `emojiName` (*type:* `String.t`, *default:* `nil`) - Optional. Immutable. User-provided name for the custom emoji, which is unique within the organization. Required when the custom emoji is created, output only otherwise. Emoji names must start and end with colons, must be lowercase and can only contain alphanumeric characters, hyphens, and underscores. Hyphens and underscores should be used to separate words and cannot be used consecutively. Example: `:valid-emoji-name:`
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The resource name of the custom emoji, assigned by the server. Format: `customEmojis/{customEmoji}`
  *   `payload` (*type:* `GoogleApi.Chat.V1.Model.CustomEmojiPayload.t`, *default:* `nil`) - Optional. Input only. Payload data. Required when the custom emoji is created.
  *   `temporaryImageUri` (*type:* `String.t`, *default:* `nil`) - Output only. A temporary image URL for the custom emoji, valid for at least 10 minutes. Note that this is not populated in the response when the custom emoji is created.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Unique key for the custom emoji resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :emojiName => String.t() | nil,
          :name => String.t() | nil,
          :payload => GoogleApi.Chat.V1.Model.CustomEmojiPayload.t() | nil,
          :temporaryImageUri => String.t() | nil,
          :uid => String.t() | nil
        }

  field(:emojiName)
  field(:name)
  field(:payload, as: GoogleApi.Chat.V1.Model.CustomEmojiPayload)
  field(:temporaryImageUri)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.CustomEmoji do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.CustomEmoji.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.CustomEmoji do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
