
resource "datadog_monitor" "1_anomaly_sdfsd" {
    name        = "[SEV1][anomaly] sdfsd"
    type        = "query alert"
    query       = "sdfsdf"
    message     = "sdfsdf"
    tags        = ['sdf']

monitor_thresholds {
    critical = 1.0
    critical_recovery = 0.0
}

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 1
}

resource "datadog_monitor" "2_anomaly_sdfsd" {
    name        = "[SEV2][anomaly] sdfsd"
    type        = "query alert"
    query       = "sdfsdf"
    message     = "sdfsdf"
    tags        = ['sdf']

monitor_thresholds {
    critical = 1.0
    critical_recovery = 0.0
}

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 2
}

resource "datadog_monitor" "3_anomaly_sdfsd" {
    name        = "[SEV3][anomaly] sdfsd"
    type        = "query alert"
    query       = "sdfsdf"
    message     = "sdfsdf"
    tags        = ['sdf']

monitor_thresholds {
    critical = 1.0
    critical_recovery = 0.0
}

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 3
}

resource "datadog_monitor" "4_anomaly_sdfsd" {
    name        = "[SEV4][anomaly] sdfsd"
    type        = "query alert"
    query       = "sdfsdf"
    message     = "sdfsdf"
    tags        = ['sdf']

monitor_thresholds {
    critical = 1.0
    critical_recovery = 0.0
}

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 4
}

resource "datadog_monitor" "1_threshold_asdasd" {
    name        = "[SEV1][threshold] asdasd"
    type        = "query alert"
    query       = "adsa"
    message     = "asdas"
    tags        = ['dasdas']

monitor_thresholds {
    critical = 4.0
}

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 1
}

resource "datadog_monitor" "2_threshold_asdasd" {
    name        = "[SEV2][threshold] asdasd"
    type        = "query alert"
    query       = "adsa"
    message     = "asdas"
    tags        = ['dasdas']

monitor_thresholds {
    critical = 4.0
}

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 2
}

resource "datadog_monitor" "3_threshold_asdasd" {
    name        = "[SEV3][threshold] asdasd"
    type        = "query alert"
    query       = "adsa"
    message     = "asdas"
    tags        = ['dasdas']

monitor_thresholds {
    critical = 4.0
}

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 3
}

resource "datadog_monitor" "4_threshold_asdasd" {
    name        = "[SEV4][threshold] asdasd"
    type        = "query alert"
    query       = "adsa"
    message     = "asdas"
    tags        = ['dasdas']

monitor_thresholds {
    critical = 4.0
}

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 4
}

resource "datadog_monitor" "1_composite_asda" {
    name        = "[SEV1][composite] asda"
    type        = "composite"
    query       = "asdas"
    message     = "adasd"
    tags        = ['asda']

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 1
}

resource "datadog_monitor" "2_composite_asda" {
    name        = "[SEV2][composite] asda"
    type        = "composite"
    query       = "asdas"
    message     = "adasd"
    tags        = ['asda']

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 2
}

resource "datadog_monitor" "3_composite_asda" {
    name        = "[SEV3][composite] asda"
    type        = "composite"
    query       = "asdas"
    message     = "adasd"
    tags        = ['asda']

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 3
}

resource "datadog_monitor" "4_composite_asda" {
    name        = "[SEV4][composite] asda"
    type        = "composite"
    query       = "asdas"
    message     = "adasd"
    tags        = ['asda']

    notify_audit            = false
    require_full_window     = true
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 4
}
