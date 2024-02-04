
        resource "datadog_monitor" "monitor_1" {
          name        = "monitor_1 markers are above the threshold"
          type        = "query alert"
          query       = "aknskdv"
          message     = "sksdjnjsd"
          tags        = ['skjncsc']
          monitor_thresholds {
            critical = 40
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
          query       = "aknskdv"
          message     = "sksdjnjsd"
          tags        = ['skjncsc']
          monitor_thresholds {
            critical = 40
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
          query       = "aknskdv"
          message     = "sksdjnjsd"
          tags        = ['skjncsc']
          monitor_thresholds {
            critical = 40
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
        