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

defmodule GoogleApi.Dataproc.V1.Model.WriteSessionSparkApplicationContextRequest do
  @moduledoc """
  Write Spark Application data to internal storage systems

  ## Attributes

  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. Parent (Batch) resource reference.
  *   `sparkWrapperObjects` (*type:* `list(GoogleApi.Dataproc.V1.Model.SparkWrapperObject.t)`, *default:* `nil`) - Required. The batch of spark application context objects sent for ingestion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parent => String.t() | nil,
          :sparkWrapperObjects => list(GoogleApi.Dataproc.V1.Model.SparkWrapperObject.t()) | nil
        }

  field(:parent)
  field(:sparkWrapperObjects, as: GoogleApi.Dataproc.V1.Model.SparkWrapperObject, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataproc.V1.Model.WriteSessionSparkApplicationContextRequest do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.WriteSessionSparkApplicationContextRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataproc.V1.Model.WriteSessionSparkApplicationContextRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
