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

defmodule GoogleApi.WorkloadManager.V1.Model.Insight do
  @moduledoc """
  A presentation of host resource usage where the workload runs.

  ## Attributes

  *   `instanceId` (*type:* `String.t`, *default:* `nil`) - Required. The instance id where the insight is generated from
  *   `sapDiscovery` (*type:* `GoogleApi.WorkloadManager.V1.Model.SapDiscovery.t`, *default:* `nil`) - The insights data for SAP system discovery. This is a copy of SAP System proto and should get updated whenever that one changes.
  *   `sapValidation` (*type:* `GoogleApi.WorkloadManager.V1.Model.SapValidation.t`, *default:* `nil`) - The insights data for the SAP workload validation.
  *   `sentTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. [Output only] Create time stamp
  *   `sqlserverValidation` (*type:* `GoogleApi.WorkloadManager.V1.Model.SqlserverValidation.t`, *default:* `nil`) - The insights data for the sqlserver workload validation.
  *   `torsoValidation` (*type:* `GoogleApi.WorkloadManager.V1.Model.TorsoValidation.t`, *default:* `nil`) - The insights data for workload validation of torso workloads.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceId => String.t() | nil,
          :sapDiscovery => GoogleApi.WorkloadManager.V1.Model.SapDiscovery.t() | nil,
          :sapValidation => GoogleApi.WorkloadManager.V1.Model.SapValidation.t() | nil,
          :sentTime => DateTime.t() | nil,
          :sqlserverValidation =>
            GoogleApi.WorkloadManager.V1.Model.SqlserverValidation.t() | nil,
          :torsoValidation => GoogleApi.WorkloadManager.V1.Model.TorsoValidation.t() | nil
        }

  field(:instanceId)
  field(:sapDiscovery, as: GoogleApi.WorkloadManager.V1.Model.SapDiscovery)
  field(:sapValidation, as: GoogleApi.WorkloadManager.V1.Model.SapValidation)
  field(:sentTime, as: DateTime)
  field(:sqlserverValidation, as: GoogleApi.WorkloadManager.V1.Model.SqlserverValidation)
  field(:torsoValidation, as: GoogleApi.WorkloadManager.V1.Model.TorsoValidation)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.Insight do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.Insight.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.Insight do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
