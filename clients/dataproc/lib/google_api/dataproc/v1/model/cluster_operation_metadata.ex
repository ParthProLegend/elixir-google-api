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

defmodule GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata do
  @moduledoc """
  Metadata describing the operation.

  ## Attributes

  *   `childOperationIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Child operation ids
  *   `clusterName` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the cluster for the operation.
  *   `clusterUuid` (*type:* `String.t`, *default:* `nil`) - Output only. Cluster UUID for the operation.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. Short description of operation.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Output only. Labels associated with the operation
  *   `operationType` (*type:* `String.t`, *default:* `nil`) - Output only. The operation type.
  *   `status` (*type:* `GoogleApi.Dataproc.V1.Model.ClusterOperationStatus.t`, *default:* `nil`) - Output only. Current operation status.
  *   `statusHistory` (*type:* `list(GoogleApi.Dataproc.V1.Model.ClusterOperationStatus.t)`, *default:* `nil`) - Output only. The previous operation status.
  *   `warnings` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Errors encountered during operation execution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childOperationIds => list(String.t()) | nil,
          :clusterName => String.t() | nil,
          :clusterUuid => String.t() | nil,
          :description => String.t() | nil,
          :labels => map() | nil,
          :operationType => String.t() | nil,
          :status => GoogleApi.Dataproc.V1.Model.ClusterOperationStatus.t() | nil,
          :statusHistory => list(GoogleApi.Dataproc.V1.Model.ClusterOperationStatus.t()) | nil,
          :warnings => list(String.t()) | nil
        }

  field(:childOperationIds, type: :list)
  field(:clusterName)
  field(:clusterUuid)
  field(:description)
  field(:labels, type: :map)
  field(:operationType)
  field(:status, as: GoogleApi.Dataproc.V1.Model.ClusterOperationStatus)
  field(:statusHistory, as: GoogleApi.Dataproc.V1.Model.ClusterOperationStatus, type: :list)
  field(:warnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
