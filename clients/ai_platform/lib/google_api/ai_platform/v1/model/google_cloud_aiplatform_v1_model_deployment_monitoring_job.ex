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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringJob do
  @moduledoc """
  Represents a job that runs periodically to monitor the deployed models in an endpoint. It will analyze the logged training & prediction data to detect any abnormal behaviors.

  ## Attributes

  *   `analysisInstanceSchemaUri` (*type:* `String.t`, *default:* `nil`) - YAML schema file uri describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If this field is empty, all the feature data types are inferred from predict_instance_schema_uri, meaning that TFDV will use the data in the exact format(data type) as prediction request/response. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  *   `bigqueryTables` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable.t)`, *default:* `nil`) - Output only. The created bigquery tables for the job under customer project. Customer could do their own query & analysis. There could be 4 log tables in maximum: 1. Training data logging predict request/response 2. Serving data logging predict request/response
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this ModelDeploymentMonitoringJob was created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The user-defined name of the ModelDeploymentMonitoringJob. The name can be up to 128 characters long and can consist of any UTF-8 characters. Display name of a ModelDeploymentMonitoringJob.
  *   `enableMonitoringPipelineLogs` (*type:* `boolean()`, *default:* `nil`) - If true, the scheduled monitoring pipeline logs are sent to Google Cloud Logging, including pipeline status and anomalies detected. Please note the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging#pricing).
  *   `encryptionSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t`, *default:* `nil`) - Customer-managed encryption key spec for a ModelDeploymentMonitoringJob. If set, this ModelDeploymentMonitoringJob and all sub-resources of this ModelDeploymentMonitoringJob will be secured by this key.
  *   `endpoint` (*type:* `String.t`, *default:* `nil`) - Required. Endpoint resource name. Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
  *   `error` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - Output only. Only populated when the job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels with user-defined metadata to organize your ModelDeploymentMonitoringJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  *   `latestMonitoringPipelineMetadata` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadata.t`, *default:* `nil`) - Output only. Latest triggered monitoring pipeline metadata.
  *   `logTtl` (*type:* `String.t`, *default:* `nil`) - The TTL of BigQuery tables in user projects which stores logs. A day is the basic unit of the TTL and we take the ceil of TTL/86400(a day). e.g. { second: 3600} indicates ttl = 1 day.
  *   `loggingSamplingStrategy` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SamplingStrategy.t`, *default:* `nil`) - Required. Sample Strategy for logging.
  *   `modelDeploymentMonitoringObjectiveConfigs` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig.t)`, *default:* `nil`) - Required. The config for monitoring objectives. This is a per DeployedModel config. Each DeployedModel needs to be configured separately.
  *   `modelDeploymentMonitoringScheduleConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig.t`, *default:* `nil`) - Required. Schedule config for running the monitoring job.
  *   `modelMonitoringAlertConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringAlertConfig.t`, *default:* `nil`) - Alert config for model monitoring.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of a ModelDeploymentMonitoringJob.
  *   `nextScheduleTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this monitoring pipeline will be scheduled to run for the next round.
  *   `predictInstanceSchemaUri` (*type:* `String.t`, *default:* `nil`) - YAML schema file uri describing the format of a single instance, which are given to format this Endpoint's prediction (and explanation). If not set, we will generate predict schema from collected predict requests.
  *   `samplePredictInstance` (*type:* `any()`, *default:* `nil`) - Sample Predict instance, same format as PredictRequest.instances, this can be set as a replacement of ModelDeploymentMonitoringJob.predict_instance_schema_uri. If not set, we will generate predict schema from collected predict requests.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `scheduleState` (*type:* `String.t`, *default:* `nil`) - Output only. Schedule state when the monitoring job is in Running state.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The detailed state of the monitoring job. When the job is still creating, the state will be 'PENDING'. Once the job is successfully created, the state will be 'RUNNING'. Pause the job, the state will be 'PAUSED'. Resume the job, the state will return to 'RUNNING'.
  *   `statsAnomaliesBaseDirectory` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsDestination.t`, *default:* `nil`) - Stats anomalies base folder path.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this ModelDeploymentMonitoringJob was updated most recently.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analysisInstanceSchemaUri => String.t() | nil,
          :bigqueryTables =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable.t()
            )
            | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :enableMonitoringPipelineLogs => boolean() | nil,
          :encryptionSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t() | nil,
          :endpoint => String.t() | nil,
          :error => GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t() | nil,
          :labels => map() | nil,
          :latestMonitoringPipelineMetadata =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadata.t()
            | nil,
          :logTtl => String.t() | nil,
          :loggingSamplingStrategy =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SamplingStrategy.t() | nil,
          :modelDeploymentMonitoringObjectiveConfigs =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig.t()
            )
            | nil,
          :modelDeploymentMonitoringScheduleConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig.t()
            | nil,
          :modelMonitoringAlertConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringAlertConfig.t()
            | nil,
          :name => String.t() | nil,
          :nextScheduleTime => DateTime.t() | nil,
          :predictInstanceSchemaUri => String.t() | nil,
          :samplePredictInstance => any() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :scheduleState => String.t() | nil,
          :state => String.t() | nil,
          :statsAnomaliesBaseDirectory =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsDestination.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:analysisInstanceSchemaUri)

  field(:bigqueryTables,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable,
    type: :list
  )

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:enableMonitoringPipelineLogs)
  field(:encryptionSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec)
  field(:endpoint)
  field(:error, as: GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus)
  field(:labels, type: :map)

  field(:latestMonitoringPipelineMetadata,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadata
  )

  field(:logTtl)

  field(:loggingSamplingStrategy,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SamplingStrategy
  )

  field(:modelDeploymentMonitoringObjectiveConfigs,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig,
    type: :list
  )

  field(:modelDeploymentMonitoringScheduleConfig,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig
  )

  field(:modelMonitoringAlertConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringAlertConfig
  )

  field(:name)
  field(:nextScheduleTime, as: DateTime)
  field(:predictInstanceSchemaUri)
  field(:samplePredictInstance)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:scheduleState)
  field(:state)

  field(:statsAnomaliesBaseDirectory,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsDestination
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringJob do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringJob.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
