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

defmodule GoogleApi.MarketingPlatformAdmin.V1alpha.Model.ListAnalyticsAccountLinksResponse do
  @moduledoc """
  Response message for ListAnalyticsAccountLinks RPC.

  ## Attributes

  *   `analyticsAccountLinks` (*type:* `list(GoogleApi.MarketingPlatformAdmin.V1alpha.Model.AnalyticsAccountLink.t)`, *default:* `nil`) - Analytics account links in this organization.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analyticsAccountLinks =>
            list(GoogleApi.MarketingPlatformAdmin.V1alpha.Model.AnalyticsAccountLink.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:analyticsAccountLinks,
    as: GoogleApi.MarketingPlatformAdmin.V1alpha.Model.AnalyticsAccountLink,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.MarketingPlatformAdmin.V1alpha.Model.ListAnalyticsAccountLinksResponse do
  def decode(value, options) do
    GoogleApi.MarketingPlatformAdmin.V1alpha.Model.ListAnalyticsAccountLinksResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MarketingPlatformAdmin.V1alpha.Model.ListAnalyticsAccountLinksResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
