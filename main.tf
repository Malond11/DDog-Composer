resource "datadog_monitor" "monitor_[RDKB] [SEV3] WIFI_ERROR markers are trending" {
  name               = "[RDKB] [SEV3] WIFI_ERROR markers are trending"
  type               = "query alert"
  query              = "avg(last_12h):anomalies(sum:rdk.WIFI_ERROR{platform:rdkb,!partner:sky* , !context:nonsev, ! partner:null} by {devicename,partner,markername}.as_count().rollup(sum, 900), 'agile', 3, direction='above', interval=120, alert_window='last_30m', count_default_zero='true', seasonality='weekly', timezone='utc') >= 1"
  message            = "{{#is_alert}} [RDKB] WIFI_ERROR markers are trending{{/is_alert}}"
  tags              = [
  "alert-category:marker",
  "alert-metric:count",
  "alert-name:sevalert",
  "alert-platform:rdkb",
  "alert-trigger:error",
  "alert-trigger:wifi-error",
  "env:prod",
  "team:rdk"
]
  options {

    critical      = 1
    critical_recovery      = 0
  }
}
resource "datadog_monitor" "monitor_[Broadband][Percentage][C-SEV1] WIFI_ERROR markers are trending" {
  name               = "[Broadband][Percentage][C-SEV1] WIFI_ERROR markers are trending"
  type               = "composite"
  query              = "128748526 && 128778189 && 128779671 && 130480974 && 130613846"
  message            = "{{#is_alert}}---

[Broadband] [Percentage] [C-SEV1] WIFI_ERROR markers are trending on {{devicename.name}} at {{last_triggered_at}} UTC

Timeline here: https://dh-comcast.datadoghq.com/monitors/128748526?q=devicename%3A{{devicename.name}} 

---
@slack-TPX-rdkb-alerts
{{/is_alert}}"
  tags              = [
  "alert-category:marker",
  "alert-metric:percentage",
  "alert-name:sevalert",
  "alert-platform:rdkb",
  "alert-trigger:error",
  "alert-type:composite",
  "team:rdk"
]
}
resource "datadog_monitor" "monitor_[RDKB][Count] WIFI_ERROR markers are above the threshold" {
  name               = "[RDKB][Count] WIFI_ERROR markers are above the threshold"
  type               = "query alert"
  query              = "sum(last_30m):sum:rdk.WIFI_ERROR{platform:rdkb,!partner:sky* , !context:nonsev} by {devicename,partner,markername}.as_count().rollup(sum, 900) > 50"
  message            = "threshold"
  tags              = [
  "alert-category:marker",
  "alert-name:sevalert",
  "alert-platform:rdkb",
  "alert-trigger:error",
  "alert-trigger:wifi-error",
  "alert-type:threshold",
  "env:prod",
  "team:rdk"
]
  options {

    critical      = 50
  }
}
resource "datadog_monitor" "monitor_[Broadband][P-CA][Groupname] WIFI_ERROR markers are above the threshold" {
  name               = "[Broadband][P-CA][Groupname] WIFI_ERROR markers are above the threshold"
  type               = "query alert"
  query              = "change(sum(last_1h),last_4h):sum:rdk.WIFI_ERROR{platform:rdkb, ! groupname:ga, ! partner:sky* , ! context:nonsev} by {devicename,groupname,partner}.as_count().rollup(sum, 3600) > 10"
  message            = "This is change over time alert. It monitors change over 1 hour and compared to last 4 days. Everything that is above 0.01% will fire. If change is zero or negative, it will be ignored."
  tags              = [
  "team:rdk",
  "rdk-hide",
  "alert-name:sevgroup",
  "alert-platform:rdkb",
  "alert-type:threshold",
  "alert-category:marker",
  "alert-trigger:error",
  "rdk-test"
]
  options {

    critical      = 10
  }
}
