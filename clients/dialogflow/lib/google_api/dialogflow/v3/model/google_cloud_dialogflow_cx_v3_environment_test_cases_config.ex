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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig do
  @moduledoc """
  The configuration for continuous tests.

  ## Attributes

  *   `enableContinuousRun` (*type:* `boolean()`, *default:* `nil`) - Whether to run test cases in TestCasesConfig.test_cases periodically. Default false. If set to true, run once a day.
  *   `enablePredeploymentRun` (*type:* `boolean()`, *default:* `nil`) - Whether to run test cases in TestCasesConfig.test_cases before deploying a flow version to the environment. Default false.
  *   `testCases` (*type:* `list(String.t)`, *default:* `nil`) - A list of test case names to run. They should be under the same agent. Format of each test case name: `projects//locations//agents//testCases/`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableContinuousRun => boolean() | nil,
          :enablePredeploymentRun => boolean() | nil,
          :testCases => list(String.t()) | nil
        }

  field(:enableContinuousRun)
  field(:enablePredeploymentRun)
  field(:testCases, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
