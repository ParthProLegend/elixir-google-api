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

defmodule GoogleApi.BigtableAdmin.V2.Model.ColumnFamily do
  @moduledoc """
  A set of columns within a table which share a common configuration.

  ## Attributes

  *   `gcRule` (*type:* `GoogleApi.BigtableAdmin.V2.Model.GcRule.t`, *default:* `nil`) - Garbage collection rule specified as a protobuf. Must serialize to at most 500 bytes. NOTE: Garbage collection executes opportunistically in the background, and so it's possible for reads to return a cell even if it matches the active GC expression for its family.
  *   `stats` (*type:* `GoogleApi.BigtableAdmin.V2.Model.ColumnFamilyStats.t`, *default:* `nil`) - Only available with STATS_VIEW, this includes summary statistics about column family contents. For statistics over an entire table, see TableStats above.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcRule => GoogleApi.BigtableAdmin.V2.Model.GcRule.t() | nil,
          :stats => GoogleApi.BigtableAdmin.V2.Model.ColumnFamilyStats.t() | nil
        }

  field(:gcRule, as: GoogleApi.BigtableAdmin.V2.Model.GcRule)
  field(:stats, as: GoogleApi.BigtableAdmin.V2.Model.ColumnFamilyStats)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.ColumnFamily do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.ColumnFamily.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.ColumnFamily do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
