
            terraform {
                required_providers {
                    datadog = {
                        source = "Datadog/datadog"
                    }
                }
            }
            # Configure the Datadog provider
            provider "datadog" {
              api_key = var.datadog_api_key
              app_key = var.datadog_app_key
              api_url = var.datadog_host
            }
            