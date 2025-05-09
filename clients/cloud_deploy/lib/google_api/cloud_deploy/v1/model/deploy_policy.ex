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

defmodule GoogleApi.CloudDeploy.V1.Model.DeployPolicy do
  @moduledoc """
  A `DeployPolicy` resource in the Cloud Deploy API. A `DeployPolicy` inhibits manual or automation-driven actions within a Delivery Pipeline or Target.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the deploy policy was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the `DeployPolicy`. Max length is 255 characters.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the `DeployPolicy`. Format is `projects/{project}/locations/{location}/deployPolicies/{deployPolicy}`. The `deployPolicy` component must match `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`
  *   `rules` (*type:* `list(GoogleApi.CloudDeploy.V1.Model.PolicyRule.t)`, *default:* `nil`) - Required. Rules to apply. At least one rule must be present.
  *   `selectors` (*type:* `list(GoogleApi.CloudDeploy.V1.Model.DeployPolicyResourceSelector.t)`, *default:* `nil`) - Required. Selected resources to which the policy will be applied. At least one selector is required. If one selector matches the resource the policy applies. For example, if there are two selectors and the action being attempted matches one of them, the policy will apply to that action.
  *   `suspended` (*type:* `boolean()`, *default:* `nil`) - Optional. When suspended, the policy will not prevent actions from occurring, even if the action violates the policy.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Unique identifier of the `DeployPolicy`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Most recent time at which the deploy policy was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :rules => list(GoogleApi.CloudDeploy.V1.Model.PolicyRule.t()) | nil,
          :selectors =>
            list(GoogleApi.CloudDeploy.V1.Model.DeployPolicyResourceSelector.t()) | nil,
          :suspended => boolean() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:rules, as: GoogleApi.CloudDeploy.V1.Model.PolicyRule, type: :list)
  field(:selectors, as: GoogleApi.CloudDeploy.V1.Model.DeployPolicyResourceSelector, type: :list)
  field(:suspended)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.DeployPolicy do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.DeployPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.DeployPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
