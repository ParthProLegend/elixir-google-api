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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnector do
  @moduledoc """
  Manages the connection to external data sources for all data stores grouped under a Collection. It's a singleton resource of Collection. The initialization is only supported through DataConnectorService.SetUpDataConnector method, which will create a new Collection and initialize its DataConnector.

  ## Attributes

  *   `actionConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaActionConfig.t`, *default:* `nil`) - Optional. Action configurations to make the connector support actions.
  *   `alertPolicyConfigs` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig.t)`, *default:* `nil`) - Optional. The connector level alert config.
  *   `autoRunDisabled` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the connector is disabled for auto run. It can be used to pause periodical and real time sync.
  *   `bapConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaBAPConfig.t`, *default:* `nil`) - Optional. The configuration for establishing a BAP connection.
  *   `blockingReasons` (*type:* `list(String.t)`, *default:* `nil`) - Output only. User actions that must be completed before the connector can start syncing data.
  *   `connectorType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of connector. Each source can only map to one type. For example, salesforce, confluence and jira have THIRD_PARTY connector type. It is notmutable once set by system.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp the DataConnector was created at.
  *   `dataSource` (*type:* `String.t`, *default:* `nil`) - Required. The name of the data source. Supported values: `salesforce`, `jira`, `confluence`, `bigquery`.
  *   `destinationConfigs` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDestinationConfig.t)`, *default:* `nil`) - Optional. Any target destinations used to connect to third-party services.
  *   `entities` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity.t)`, *default:* `nil`) - List of entities from the connected data source to ingest.
  *   `errors` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t)`, *default:* `nil`) - Output only. The errors from initialization or from the latest connector run.
  *   `identityRefreshInterval` (*type:* `String.t`, *default:* `nil`) - The refresh interval to sync the Access Control List information for the documents ingested by this connector. If not set, the access control list will be refreshed at the default interval of 30 minutes. The identity refresh interval can be at least 30 minutes and at most 7 days.
  *   `identityScheduleConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig.t`, *default:* `nil`) - The configuration for the identity data synchronization runs. This contains the refresh interval to sync the Access Control List information for the documents ingested by this connector.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Input only. The KMS key to be used to protect the DataStores managed by this connector. Must be set for requests that need to comply with CMEK Org Policy protections. If this field is set and processed successfully, the DataStores created by this connector will be protected by the KMS key.
  *   `lastSyncTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. For periodic connectors only, the last time a data sync was completed.
  *   `latestPauseTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The most recent timestamp when this DataConnector was paused, affecting all functionalities such as data synchronization. Pausing a connector has the following effects: - All functionalities, including data synchronization, are halted. - Any ongoing data synchronization job will be canceled. - No future data synchronization runs will be scheduled nor can be triggered.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The full resource name of the Data Connector. Format: `projects/*/locations/*/collections/*/dataConnector`.
  *   `nextSyncTime` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleTypeDateTime.t`, *default:* `nil`) - Defines the scheduled time for the next data synchronization. This field requires hour , minute, and time_zone from the [IANA Time Zone Database](https://www.iana.org/time-zones). This is utilized when the data connector has a refresh interval greater than 1 day. When the hours or minutes are not specified, we will assume a sync time of 0:00. The user must provide a time zone to avoid ambiguity.
  *   `params` (*type:* `map()`, *default:* `nil`) - Required. Params needed to access the source in the format of (Key, Value) pairs. Required parameters for all data sources: * Key: `instance_uri` * Value: type STRING. The uri to access the data source. Required parameters for sources that support OAUTH, i.e. `salesforce`: * Key: `client_id` * Value: type STRING. The client ID for the third party service provider to identify your application. * Key: `client_secret` * Value:type STRING. The client secret generated by the third party authorization server. * Key: `access_token` * Value: type STRING. OAuth token for UCS to access to the protected resource. * Key: `refresh_token` * Value: type STRING. OAuth refresh token for UCS to obtain a new access token without user interaction. Required parameters for sources that support basic API token auth, i.e. `jira`, `confluence`: * Key: `user_account` * Value: type STRING. The username or email with the source. * Key: `api_token` * Value: type STRING. The API token generated for the source account, that is used for authenticating anywhere where you would have used a password. Example: ```json { "instance_uri": "https://xxx.atlassian.net", "user_account": "xxxx.xxx@xxx.com", "api_token": "test-token" } ``` Optional parameter to specify the authorization type to use for multiple authorization types support: * Key: `auth_type` * Value: type STRING. The authorization type for the data source. Supported values: `BASIC_AUTH`, `OAUTH`, `OAUTH_ACCESS_TOKEN`, `OAUTH_TWO_LEGGED`, `OAUTH_JWT_BEARER`, `OAUTH_PASSWORD_GRANT`, `JWT`, `API_TOKEN`, `FEDERATED_CREDENTIAL`.
  *   `privateConnectivityProjectId` (*type:* `String.t`, *default:* `nil`) - Output only. The tenant project ID associated with private connectivity connectors. This project must be allowlisted by in order for the connector to function.
  *   `realtimeState` (*type:* `String.t`, *default:* `nil`) - Output only. real-time sync state
  *   `realtimeSyncConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig.t`, *default:* `nil`) - Optional. The configuration for realtime sync.
  *   `refreshInterval` (*type:* `String.t`, *default:* `nil`) - Required. The refresh interval for data sync. If duration is set to 0, the data will be synced in real time. The streaming feature is not supported yet. The minimum is 30 minutes and maximum is 7 days.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the connector.
  *   `staticIpAddresses` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The static IP addresses used by this connector.
  *   `staticIpEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether customer has enabled static IP addresses for this connector.
  *   `syncMode` (*type:* `String.t`, *default:* `nil`) - The data synchronization mode supported by the data connector.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp the DataConnector was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaActionConfig.t()
            | nil,
          :alertPolicyConfigs =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig.t()
            )
            | nil,
          :autoRunDisabled => boolean() | nil,
          :bapConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaBAPConfig.t()
            | nil,
          :blockingReasons => list(String.t()) | nil,
          :connectorType => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :dataSource => String.t() | nil,
          :destinationConfigs =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDestinationConfig.t()
            )
            | nil,
          :entities =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity.t()
            )
            | nil,
          :errors => list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t()) | nil,
          :identityRefreshInterval => String.t() | nil,
          :identityScheduleConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig.t()
            | nil,
          :kmsKeyName => String.t() | nil,
          :lastSyncTime => DateTime.t() | nil,
          :latestPauseTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :nextSyncTime => GoogleApi.DiscoveryEngine.V1beta.Model.GoogleTypeDateTime.t() | nil,
          :params => map() | nil,
          :privateConnectivityProjectId => String.t() | nil,
          :realtimeState => String.t() | nil,
          :realtimeSyncConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig.t()
            | nil,
          :refreshInterval => String.t() | nil,
          :state => String.t() | nil,
          :staticIpAddresses => list(String.t()) | nil,
          :staticIpEnabled => boolean() | nil,
          :syncMode => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:actionConfig,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaActionConfig
  )

  field(:alertPolicyConfigs,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig,
    type: :list
  )

  field(:autoRunDisabled)

  field(:bapConfig,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaBAPConfig
  )

  field(:blockingReasons, type: :list)
  field(:connectorType)
  field(:createTime, as: DateTime)
  field(:dataSource)

  field(:destinationConfigs,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDestinationConfig,
    type: :list
  )

  field(:entities,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity,
    type: :list
  )

  field(:errors, as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus, type: :list)
  field(:identityRefreshInterval)

  field(:identityScheduleConfig,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig
  )

  field(:kmsKeyName)
  field(:lastSyncTime, as: DateTime)
  field(:latestPauseTime, as: DateTime)
  field(:name)
  field(:nextSyncTime, as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleTypeDateTime)
  field(:params, type: :map)
  field(:privateConnectivityProjectId)
  field(:realtimeState)

  field(:realtimeSyncConfig,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig
  )

  field(:refreshInterval)
  field(:state)
  field(:staticIpAddresses, type: :list)
  field(:staticIpEnabled)
  field(:syncMode)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnector do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnector.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaDataConnector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
