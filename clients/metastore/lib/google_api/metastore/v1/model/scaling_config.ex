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

defmodule GoogleApi.Metastore.V1.Model.ScalingConfig do
  @moduledoc """
  Represents the scaling configuration of a metastore service.

  ## Attributes

  *   `autoscalingConfig` (*type:* `GoogleApi.Metastore.V1.Model.AutoscalingConfig.t`, *default:* `nil`) - Optional. The autoscaling configuration.
  *   `instanceSize` (*type:* `String.t`, *default:* `nil`) - An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
  *   `scalingFactor` (*type:* `number()`, *default:* `nil`) - Scaling factor, increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscalingConfig => GoogleApi.Metastore.V1.Model.AutoscalingConfig.t() | nil,
          :instanceSize => String.t() | nil,
          :scalingFactor => number() | nil
        }

  field(:autoscalingConfig, as: GoogleApi.Metastore.V1.Model.AutoscalingConfig)
  field(:instanceSize)
  field(:scalingFactor)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1.Model.ScalingConfig do
  def decode(value, options) do
    GoogleApi.Metastore.V1.Model.ScalingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1.Model.ScalingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
