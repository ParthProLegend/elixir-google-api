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

defmodule GoogleApi.Content.V21.Model.ProductSustainabilityIncentive do
  @moduledoc """
  Information regarding sustainability related incentive programs such as rebates or tax relief.

  ## Attributes

  *   `amount` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Optional. The fixed amount of the incentive.
  *   `percentage` (*type:* `float()`, *default:* `nil`) - Optional. The percentage of the sale price that the incentive is applied to.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. Sustainability incentive program.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount => GoogleApi.Content.V21.Model.Price.t() | nil,
          :percentage => float() | nil,
          :type => String.t() | nil
        }

  field(:amount, as: GoogleApi.Content.V21.Model.Price)
  field(:percentage)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ProductSustainabilityIncentive do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ProductSustainabilityIncentive.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ProductSustainabilityIncentive do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
