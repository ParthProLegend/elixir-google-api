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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StructFieldValue do
  @moduledoc """
  One field of a Struct (or object) type feature value.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the field in the struct feature.
  *   `value` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureValue.t`, *default:* `nil`) - The value for this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :value => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureValue.t() | nil
        }

  field(:name)
  field(:value, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureValue)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StructFieldValue do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StructFieldValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StructFieldValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
