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

defmodule GoogleApi.Admin.Directory_v1.Api.Notifications do
  @moduledoc """
  API calls for all endpoints tagged `Notifications`.
  """

  alias GoogleApi.Admin.Directory_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes a notification

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Directory_v1.Connection.t`) - Connection to server
  *   `customer` (*type:* `String.t`) - The unique ID for the customer's G Suite account. The customerId is also returned as part of the Users resource.
  *   `notification_id` (*type:* `String.t`) - The unique ID of the notification.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_notifications_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, any()}
  def directory_notifications_delete(
        connection,
        customer,
        notification_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/customer/{customer}/notifications/{notificationId}", %{
        "customer" => URI.encode(customer, &URI.char_unreserved?/1),
        "notificationId" => URI.encode(notification_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves a notification.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Directory_v1.Connection.t`) - Connection to server
  *   `customer` (*type:* `String.t`) - The unique ID for the customer's G Suite account. The customerId is also returned as part of the Users resource.
  *   `notification_id` (*type:* `String.t`) - The unique ID of the notification.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Directory_v1.Model.Notification{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_notifications_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Notification.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def directory_notifications_get(
        connection,
        customer,
        notification_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/customer/{customer}/notifications/{notificationId}", %{
        "customer" => URI.encode(customer, &URI.char_unreserved?/1),
        "notificationId" => URI.encode(notification_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Directory_v1.Model.Notification{}])
  end

  @doc """
  Retrieves a list of notifications.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Directory_v1.Connection.t`) - Connection to server
  *   `customer` (*type:* `String.t`) - The unique ID for the customer's G Suite account.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:language` (*type:* `String.t`) - The ISO 639-1 code of the language notifications are returned in. The default is English (en).
      *   `:maxResults` (*type:* `integer()`) - Maximum number of notifications to return per page. The default is 100.
      *   `:pageToken` (*type:* `String.t`) - The token to specify the page of results to retrieve.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Directory_v1.Model.Notifications{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_notifications_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Notifications.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def directory_notifications_list(connection, customer, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/customer/{customer}/notifications", %{
        "customer" => URI.encode(customer, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Directory_v1.Model.Notifications{}])
  end

  @doc """
  Updates a notification. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Directory_v1.Connection.t`) - Connection to server
  *   `customer` (*type:* `String.t`) - The unique ID for the customer's G Suite account.
  *   `notification_id` (*type:* `String.t`) - The unique ID of the notification.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Admin.Directory_v1.Model.Notification.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Directory_v1.Model.Notification{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_notifications_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Notification.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def directory_notifications_patch(
        connection,
        customer,
        notification_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/customer/{customer}/notifications/{notificationId}", %{
        "customer" => URI.encode(customer, &URI.char_unreserved?/1),
        "notificationId" => URI.encode(notification_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Directory_v1.Model.Notification{}])
  end

  @doc """
  Updates a notification.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Directory_v1.Connection.t`) - Connection to server
  *   `customer` (*type:* `String.t`) - The unique ID for the customer's G Suite account.
  *   `notification_id` (*type:* `String.t`) - The unique ID of the notification.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Admin.Directory_v1.Model.Notification.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Directory_v1.Model.Notification{}}` on success
  *   `{:error, info}` on failure
  """
  @spec directory_notifications_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Notification.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def directory_notifications_update(
        connection,
        customer,
        notification_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/customer/{customer}/notifications/{notificationId}", %{
        "customer" => URI.encode(customer, &URI.char_unreserved?/1),
        "notificationId" => URI.encode(notification_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Directory_v1.Model.Notification{}])
  end
end
