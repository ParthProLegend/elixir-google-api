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

defmodule GoogleApi.AdSense.V2.Model.AdBlockingRecoveryTag do
  @moduledoc """
  Representation of an ad blocking recovery tag. See https://support.google.com/adsense/answer/11575177.

  ## Attributes

  *   `errorProtectionCode` (*type:* `String.t`, *default:* `nil`) - Error protection code that can be used in conjunction with the tag. It'll display a message to users if an [ad blocking extension blocks their access to your site](https://support.google.com/adsense/answer/11575480).
  *   `tag` (*type:* `String.t`, *default:* `nil`) - The ad blocking recovery tag. Note that the message generated by the tag can be blocked by an ad blocking extension. If this is not your desired outcome, then you'll need to use it in conjunction with the error protection code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorProtectionCode => String.t() | nil,
          :tag => String.t() | nil
        }

  field(:errorProtectionCode)
  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V2.Model.AdBlockingRecoveryTag do
  def decode(value, options) do
    GoogleApi.AdSense.V2.Model.AdBlockingRecoveryTag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V2.Model.AdBlockingRecoveryTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
