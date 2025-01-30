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

defmodule GoogleApi.Datastream.V1.Model.OracleProfile do
  @moduledoc """
  Oracle database profile.

  ## Attributes

  *   `connectionAttributes` (*type:* `map()`, *default:* `nil`) - Connection string attributes
  *   `databaseService` (*type:* `String.t`, *default:* `nil`) - Required. Database for the Oracle connection.
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - Required. Hostname for the Oracle connection.
  *   `oracleAsmConfig` (*type:* `GoogleApi.Datastream.V1.Model.OracleAsmConfig.t`, *default:* `nil`) - Optional. Configuration for Oracle ASM connection.
  *   `oracleSslConfig` (*type:* `GoogleApi.Datastream.V1.Model.OracleSslConfig.t`, *default:* `nil`) - Optional. SSL configuration for the Oracle connection.
  *   `password` (*type:* `String.t`, *default:* `nil`) - Optional. Password for the Oracle connection. Mutually exclusive with the `secret_manager_stored_password` field.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Port for the Oracle connection, default value is 1521.
  *   `secretManagerStoredPassword` (*type:* `String.t`, *default:* `nil`) - Optional. A reference to a Secret Manager resource name storing the Oracle connection password. Mutually exclusive with the `password` field.
  *   `username` (*type:* `String.t`, *default:* `nil`) - Required. Username for the Oracle connection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectionAttributes => map() | nil,
          :databaseService => String.t() | nil,
          :hostname => String.t() | nil,
          :oracleAsmConfig => GoogleApi.Datastream.V1.Model.OracleAsmConfig.t() | nil,
          :oracleSslConfig => GoogleApi.Datastream.V1.Model.OracleSslConfig.t() | nil,
          :password => String.t() | nil,
          :port => integer() | nil,
          :secretManagerStoredPassword => String.t() | nil,
          :username => String.t() | nil
        }

  field(:connectionAttributes, type: :map)
  field(:databaseService)
  field(:hostname)
  field(:oracleAsmConfig, as: GoogleApi.Datastream.V1.Model.OracleAsmConfig)
  field(:oracleSslConfig, as: GoogleApi.Datastream.V1.Model.OracleSslConfig)
  field(:password)
  field(:port)
  field(:secretManagerStoredPassword)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.OracleProfile do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.OracleProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.OracleProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
