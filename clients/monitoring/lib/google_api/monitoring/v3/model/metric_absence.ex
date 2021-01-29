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

defmodule GoogleApi.Monitoring.V3.Model.MetricAbsence do
  @moduledoc """
  A condition type that checks that monitored resources are reporting data. The configuration defines a metric and a set of monitored resources. The predicate is considered in violation when a time series for the specified metric of a monitored resource does not include any data in the specified duration.

  ## Attributes

  *   `aggregations` (*type:* `list(GoogleApi.Monitoring.V3.Model.Aggregation.t)`, *default:* `nil`) - Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resrouces). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the ListTimeSeries method when debugging this field.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - The amount of time that a time series must fail to report new data to be considered failing. The minimum value of this field is 120 seconds. Larger values that are a multiple of a minute--for example, 240 or 300 seconds--are supported. If an invalid value is given, an error will be returned. The Duration.nanos field is ignored.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that call is useful to verify the time series that will be retrieved / processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.
  *   `trigger` (*type:* `GoogleApi.Monitoring.V3.Model.Trigger.t`, *default:* `nil`) - The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregations => list(GoogleApi.Monitoring.V3.Model.Aggregation.t()),
          :duration => String.t(),
          :filter => String.t(),
          :trigger => GoogleApi.Monitoring.V3.Model.Trigger.t()
        }

  field(:aggregations, as: GoogleApi.Monitoring.V3.Model.Aggregation, type: :list)
  field(:duration)
  field(:filter)
  field(:trigger, as: GoogleApi.Monitoring.V3.Model.Trigger)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.MetricAbsence do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.MetricAbsence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.MetricAbsence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
