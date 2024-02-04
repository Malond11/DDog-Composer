variable "datadog_api_key" {}
variable "datadog_app_key" {}
variable "datadog_host" {}

provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
  api_url = var.datadog_host
}
