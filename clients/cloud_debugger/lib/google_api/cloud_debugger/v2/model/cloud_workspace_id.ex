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

defmodule GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceId do
  @moduledoc """
  A CloudWorkspaceId is a unique identifier for a cloud workspace. A cloud workspace is a place associated with a repo where modified files can be stored before they are committed.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique name of the workspace within the repo. This is the name chosen by the client in the Source API's CreateWorkspace method.
  *   `repoId` (*type:* `GoogleApi.CloudDebugger.V2.Model.RepoId.t`, *default:* `nil`) - The ID of the repo containing the workspace.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :repoId => GoogleApi.CloudDebugger.V2.Model.RepoId.t() | nil
        }

  field(:name)
  field(:repoId, as: GoogleApi.CloudDebugger.V2.Model.RepoId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceId do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
