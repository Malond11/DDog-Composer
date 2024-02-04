
        resource "datadog_monitor" "monitor_1" {
          name        = "monitor_1 markers are above the threshold"
          type        = "query alert"
          query       = "sdfsfksm"
          message     = "snfsfnsdjf"
          tags        = ['jsnfknsdkf']
          monitor_thresholds {
            critical = 1.0
            critical_recovery = 0.0
          }
          notify_audit            = false
          require_full_window     = false
          notify_no_data          = false
          renotify_interval       = 0
          include_tags            = true
          new_group_delay         = 60
          timeout_h               = 1
          notification_preset_name = "hide_handles"
          priority = 1
        }
        
        resource "datadog_monitor" "monitor_2" {
          name        = "monitor_2 markers are above the threshold"
          type        = "query alert"
          query       = "sdfsfksm"
          message     = "snfsfnsdjf"
          tags        = ['jsnfknsdkf']
          monitor_thresholds {
            critical = 1.0
            critical_recovery = 0.0
          }
          notify_audit            = false
          require_full_window     = false
          notify_no_data          = false
          renotify_interval       = 0
          include_tags            = true
          new_group_delay         = 60
          timeout_h               = 1
          notification_preset_name = "hide_handles"
          priority = 2
        }
        
        resource "datadog_monitor" "monitor_3" {
          name        = "monitor_3 markers are above the threshold"
          type        = "query alert"
          query       = "sdfsfksm"
          message     = "snfsfnsdjf"
          tags        = ['jsnfknsdkf']
          monitor_thresholds {
            critical = 1.0
            critical_recovery = 0.0
          }
          notify_audit            = false
          require_full_window     = false
          notify_no_data          = false
          renotify_interval       = 0
          include_tags            = true
          new_group_delay         = 60
          timeout_h               = 1
          notification_preset_name = "hide_handles"
          priority = 3
        }
        