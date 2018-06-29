# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudDebugger.V2.Model.StatusMessage do
  @moduledoc """
  Represents a contextual status message. The message can indicate an error or informational status, and refer to specific parts of the containing object. For example, the &#x60;Breakpoint.status&#x60; field can indicate an error referring to the &#x60;BREAKPOINT_SOURCE_LOCATION&#x60; with the message &#x60;Location not found&#x60;.

  ## Attributes

  - description (FormatMessage): Status message text. Defaults to: `null`.
  - isError (boolean()): Distinguishes errors from informational messages. Defaults to: `null`.
  - refersTo (String.t): Reference to which the message applies. Defaults to: `null`.
    - Enum - one of [UNSPECIFIED, BREAKPOINT_SOURCE_LOCATION, BREAKPOINT_CONDITION, BREAKPOINT_EXPRESSION, BREAKPOINT_AGE, VARIABLE_NAME, VARIABLE_VALUE]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => GoogleApi.CloudDebugger.V2.Model.FormatMessage.t(),
          :isError => any(),
          :refersTo => any()
        }

  field(:description, as: GoogleApi.CloudDebugger.V2.Model.FormatMessage)
  field(:isError)
  field(:refersTo)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.StatusMessage do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.StatusMessage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.StatusMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
