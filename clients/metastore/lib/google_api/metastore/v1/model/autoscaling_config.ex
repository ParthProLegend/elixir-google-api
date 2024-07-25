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

defmodule GoogleApi.Metastore.V1.Model.AutoscalingConfig do
  @moduledoc """
  Represents the autoscaling configuration of a metastore service.

  ## Attributes

  *   `autoscalingEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether or not autoscaling is enabled for this service.
  *   `autoscalingFactor` (*type:* `number()`, *default:* `nil`) - Output only. The scaling factor of a service with autoscaling enabled.
  *   `limitConfig` (*type:* `GoogleApi.Metastore.V1.Model.LimitConfig.t`, *default:* `nil`) - Optional. The LimitConfig of the service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscalingEnabled => boolean() | nil,
          :autoscalingFactor => number() | nil,
          :limitConfig => GoogleApi.Metastore.V1.Model.LimitConfig.t() | nil
        }

  field(:autoscalingEnabled)
  field(:autoscalingFactor)
  field(:limitConfig, as: GoogleApi.Metastore.V1.Model.LimitConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1.Model.AutoscalingConfig do
  def decode(value, options) do
    GoogleApi.Metastore.V1.Model.AutoscalingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1.Model.AutoscalingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
