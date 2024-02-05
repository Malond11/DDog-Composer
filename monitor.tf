
resource "datadog_monitor" "1_anomaly_dfsfs" {
    name        = "[SEV1][anomaly] dfsfs"
    type        = "query alert"
    query       = "fsdfsf"
    message     = "dadawd"
    tags        = ['adsda']

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

resource "datadog_monitor" "2_anomaly_dfsfs" {
    name        = "[SEV2][anomaly] dfsfs"
    type        = "query alert"
    query       = "fsdfsf"
    message     = "dadawd"
    tags        = ['adsda']

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

resource "datadog_monitor" "1_threshold_dfsdf" {
    name        = "[SEV1][threshold] dfsdf"
    type        = "query alert"
    query       = "asdad"
    message     = "adsasd"
    tags        = ['sadsd']

monitor_thresholds {
    critical = 3.0
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

resource "datadog_monitor" "2_threshold_dfsdf" {
    name        = "[SEV2][threshold] dfsdf"
    type        = "query alert"
    query       = "asdad"
    message     = "adsasd"
    tags        = ['sadsd']

monitor_thresholds {
    critical = 3.0
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

resource "datadog_monitor" "1_change_asdasd" {
    name        = "[SEV1][change] asdasd"
    type        = "query alert"
    query       = "adda"
    message     = "adasda"
    tags        = ['asdad']

monitor_thresholds {
    critical = 3.0
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

resource "datadog_monitor" "2_change_asdasd" {
    name        = "[SEV2][change] asdasd"
    type        = "query alert"
    query       = "adda"
    message     = "adasda"
    tags        = ['asdad']

monitor_thresholds {
    critical = 3.0
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

resource "datadog_monitor" "1_composite_asdsada" {
    name        = "[SEV1][composite] asdsada"
    type        = "composite"
    query       = "adad"
    message     = "adad"
    tags        = ['dadad']

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

resource "datadog_monitor" "2_composite_asdsada" {
    name        = "[SEV2][composite] asdsada"
    type        = "composite"
    query       = "adad"
    message     = "adad"
    tags        = ['dadad']

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

resource "datadog_monitor" "3_composite_asdsada" {
    name        = "[SEV3][composite] asdsada"
    type        = "composite"
    query       = "adad"
    message     = "adad"
    tags        = ['dadad']

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

resource "datadog_monitor" "4_composite_asdsada" {
    name        = "[SEV4][composite] asdsada"
    type        = "composite"
    query       = "adad"
    message     = "adad"
    tags        = ['dadad']

    notify_audit            = false
    require_full_window     = false
    notify_no_data          = false
    renotify_interval       = 0
    include_tags            = true
    new_group_delay         = 60
    timeout_h               = 1
    notification_preset_name = "hide_handles"
    priority = 4
}
