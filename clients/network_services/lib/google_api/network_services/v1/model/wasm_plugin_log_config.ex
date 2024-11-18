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

defmodule GoogleApi.NetworkServices.V1.Model.WasmPluginLogConfig do
  @moduledoc """
  Specifies the logging options for the activity performed by this plugin. If logging is enabled, plugin logs are exported to Cloud Logging.

  ## Attributes

  *   `enable` (*type:* `boolean()`, *default:* `nil`) - Optional. Specifies whether to enable logging for activity by this plugin. Defaults to `false`.
  *   `minLogLevel` (*type:* `String.t`, *default:* `nil`) - Non-empty default. Specificies the lowest level of the plugin logs that are exported to Cloud Logging. This setting relates to the logs generated by using logging statements in your Wasm code. This field is can be set only if logging is enabled for the plugin. If the field is not provided when logging is enabled, it is set to `INFO` by default.
  *   `sampleRate` (*type:* `number()`, *default:* `nil`) - Non-empty default. Configures the sampling rate of activity logs, where `1.0` means all logged activity is reported and `0.0` means no activity is reported. A floating point value between `0.0` and `1.0` indicates that a percentage of log messages is stored. The default value when logging is enabled is `1.0`. The value of the field must be between `0` and `1` (inclusive). This field can be specified only if logging is enabled for this plugin.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enable => boolean() | nil,
          :minLogLevel => String.t() | nil,
          :sampleRate => number() | nil
        }

  field(:enable)
  field(:minLogLevel)
  field(:sampleRate)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.WasmPluginLogConfig do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.WasmPluginLogConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.WasmPluginLogConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
