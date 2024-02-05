
resource "datadog_monitor" "1_anomaly_fsfsdfs" {
    name        = "[SEV1][anomaly] fsfsdfs"
    type        = "query alert"
    query       = "fdfsdd"
    message     = "sfdsfsd"
    tags        = ['sfsff']

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

resource "datadog_monitor" "2_anomaly_fsfsdfs" {
    name        = "[SEV2][anomaly] fsfsdfs"
    type        = "query alert"
    query       = "fdfsdd"
    message     = "sfdsfsd"
    tags        = ['sfsff']

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

resource "datadog_monitor" "1_threshold_asdad" {
    name        = "[SEV1][threshold] asdad"
    type        = "query alert"
    query       = "adass"
    message     = "asdasd"
    tags        = ['adss']

monitor_thresholds {
    critical = 3.0
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

resource "datadog_monitor" "2_threshold_asdad" {
    name        = "[SEV2][threshold] asdad"
    type        = "query alert"
    query       = "adass"
    message     = "asdasd"
    tags        = ['adss']

monitor_thresholds {
    critical = 3.0
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

resource "datadog_monitor" "1_change_asdasd" {
    name        = "[SEV1][change] asdasd"
    type        = "query alert"
    query       = "adad"
    message     = "adada"
    tags        = ['add']

monitor_thresholds {
    critical = 5.0
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

resource "datadog_monitor" "2_change_asdasd" {
    name        = "[SEV2][change] asdasd"
    type        = "query alert"
    query       = "adad"
    message     = "adada"
    tags        = ['add']

monitor_thresholds {
    critical = 5.0
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

resource "datadog_monitor" "1_composite_asdasdas" {
    name        = "[SEV1][composite] asdasdas"
    type        = "composite"
    query       = "dasdasd"
    message     = "sadas"
    tags        = ['asdasd']

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

resource "datadog_monitor" "2_composite_asdasdas" {
    name        = "[SEV2][composite] asdasdas"
    type        = "composite"
    query       = "dasdasd"
    message     = "sadas"
    tags        = ['asdasd']

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

resource "datadog_monitor" "3_composite_asdasdas" {
    name        = "[SEV3][composite] asdasdas"
    type        = "composite"
    query       = "dasdasd"
    message     = "sadas"
    tags        = ['asdasd']

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

resource "datadog_monitor" "4_composite_asdasdas" {
    name        = "[SEV4][composite] asdasdas"
    type        = "composite"
    query       = "dasdasd"
    message     = "sadas"
    tags        = ['asdasd']

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
