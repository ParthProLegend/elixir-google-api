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

defmodule GoogleApi.NetworkServices.V1.Model.HttpRouteHttpDirectResponse do
  @moduledoc """
  Static HTTP response object to be returned.

  ## Attributes

  *   `bytesBody` (*type:* `String.t`, *default:* `nil`) - Optional. Response body as bytes. Maximum body size is 4096B.
  *   `status` (*type:* `integer()`, *default:* `nil`) - Required. Status to return as part of HTTP Response. Must be a positive integer.
  *   `stringBody` (*type:* `String.t`, *default:* `nil`) - Optional. Response body as a string. Maximum body length is 1024 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bytesBody => String.t() | nil,
          :status => integer() | nil,
          :stringBody => String.t() | nil
        }

  field(:bytesBody)
  field(:status)
  field(:stringBody)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.HttpRouteHttpDirectResponse do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.HttpRouteHttpDirectResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.HttpRouteHttpDirectResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
