import os

def create_datadog_monitor():
    # Define valid monitor types
    valid_monitor_types = ['anomaly', 'threshold', 'change', 'composite']

    # Get user input
    while True:
        type = input("Enter the type of the monitor: ")
        if type not in valid_monitor_types:
            print("Invalid monitor type. Please enter one of the following: anomaly, threshold, change, composite.")
        else:
            break

    query = input("Enter the query of the monitor: ")
    message = input("Enter the message of the monitor: ")
    tags = input("Enter the tags of the monitor (comma separated): ").split(',')
    
    if type == 'change':
        critical = input("Enter the threshold of the monitor: ")
    elif type == 'anomaly':
        critical = 1.0
    else:
        critical = input("Enter the critical level of the monitor: ")

    num_monitors = int(input("Enter the number of monitors to create: "))

    hcl_content = ""
    for i in range(1, num_monitors + 1):
        # Create the HCL content
        monitor_name = f"monitor_{i}"
        hcl_content += f'''
        resource "datadog_monitor" "{monitor_name}" {{
          name        = "{monitor_name} markers are above the threshold"
          type        = "query alert"
          query       = "{query}"
          message     = "{message}"
          tags        = {tags}
          monitor_thresholds {{
            critical = {critical}
          }}
          notify_audit            = false
          require_full_window     = false
          notify_no_data          = false
          renotify_interval       = 0
          include_tags            = true
          new_group_delay         = 60
          timeout_h               = 1
          notification_preset_name = "hide_handles"
          priority = {i}
        }}
        '''

    # Write the HCL content to a file
    with open(f'{type}.tf', 'w') as f:
        f.write(hcl_content)

    print(f'HCL file {type}.tf created.')

if __name__ == "__main__":
    create_datadog_monitor()