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

defmodule GoogleApi.CloudDebugger.V2.Model.CloudRepoSourceContext do
  @moduledoc """
  A CloudRepoSourceContext denotes a particular revision in a cloud repo (a repo hosted by the Google Cloud Platform).

  ## Attributes

  *   `aliasContext` (*type:* `GoogleApi.CloudDebugger.V2.Model.AliasContext.t`, *default:* `nil`) - An alias, which may be a branch or tag.
  *   `aliasName` (*type:* `String.t`, *default:* `nil`) - The name of an alias (branch, tag, etc.).
  *   `repoId` (*type:* `GoogleApi.CloudDebugger.V2.Model.RepoId.t`, *default:* `nil`) - The ID of the repo.
  *   `revisionId` (*type:* `String.t`, *default:* `nil`) - A revision ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aliasContext => GoogleApi.CloudDebugger.V2.Model.AliasContext.t() | nil,
          :aliasName => String.t() | nil,
          :repoId => GoogleApi.CloudDebugger.V2.Model.RepoId.t() | nil,
          :revisionId => String.t() | nil
        }

  field(:aliasContext, as: GoogleApi.CloudDebugger.V2.Model.AliasContext)
  field(:aliasName)
  field(:repoId, as: GoogleApi.CloudDebugger.V2.Model.RepoId)
  field(:revisionId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.CloudRepoSourceContext do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.CloudRepoSourceContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.CloudRepoSourceContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
