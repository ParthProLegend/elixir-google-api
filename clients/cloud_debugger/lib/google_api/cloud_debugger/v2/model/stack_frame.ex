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

defmodule GoogleApi.CloudDebugger.V2.Model.StackFrame do
  @moduledoc """
  Represents a stack frame context.

  ## Attributes

  - arguments ([Variable]): Set of arguments passed to this function. Note that this might not be populated for all stack frames. Defaults to: `null`.
  - function (String.t): Demangled function name at the call site. Defaults to: `null`.
  - locals ([Variable]): Set of local variables at the stack frame location. Note that this might not be populated for all stack frames. Defaults to: `null`.
  - location (SourceLocation): Source location of the call site. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arguments => list(GoogleApi.CloudDebugger.V2.Model.Variable.t()),
          :function => any(),
          :locals => list(GoogleApi.CloudDebugger.V2.Model.Variable.t()),
          :location => GoogleApi.CloudDebugger.V2.Model.SourceLocation.t()
        }

  field(:arguments, as: GoogleApi.CloudDebugger.V2.Model.Variable, type: :list)
  field(:function)
  field(:locals, as: GoogleApi.CloudDebugger.V2.Model.Variable, type: :list)
  field(:location, as: GoogleApi.CloudDebugger.V2.Model.SourceLocation)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.StackFrame do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.StackFrame.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.StackFrame do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
