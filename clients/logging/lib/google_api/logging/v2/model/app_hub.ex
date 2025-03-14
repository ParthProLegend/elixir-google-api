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

defmodule GoogleApi.Logging.V2.Model.AppHub do
  @moduledoc """
  Metadata associated with App Hub.

  ## Attributes

  *   `application` (*type:* `GoogleApi.Logging.V2.Model.AppHubApplication.t`, *default:* `nil`) - Metadata associated with the application.
  *   `service` (*type:* `GoogleApi.Logging.V2.Model.AppHubService.t`, *default:* `nil`) - Metadata associated with the service.
  *   `workload` (*type:* `GoogleApi.Logging.V2.Model.AppHubWorkload.t`, *default:* `nil`) - Metadata associated with the workload.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :application => GoogleApi.Logging.V2.Model.AppHubApplication.t() | nil,
          :service => GoogleApi.Logging.V2.Model.AppHubService.t() | nil,
          :workload => GoogleApi.Logging.V2.Model.AppHubWorkload.t() | nil
        }

  field(:application, as: GoogleApi.Logging.V2.Model.AppHubApplication)
  field(:service, as: GoogleApi.Logging.V2.Model.AppHubService)
  field(:workload, as: GoogleApi.Logging.V2.Model.AppHubWorkload)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.AppHub do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.AppHub.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.AppHub do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
