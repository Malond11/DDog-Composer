import os
import textwrap

def print_logo():
    print("""
   
┳┓ ┓      ┏┓              
┃┃┏┫┏┓┏┓  ┃ ┏┓┏┳┓┏┓┏┓┏┏┓┏┓
┻┛┗┻┗┛┗┫  ┗┛┗┛┛┗┗┣┛┗┛┛┗ ┛ 
       ┛         ┛        
 
    """)

def get_valid_input(prompt, valid_responses, error_message):
    while True:
        response = input(prompt).lower()
        if response in valid_responses:
            return response
        else:
            print(error_message)

def get_integer_input(prompt):
    while True:
        try:
            return int(input(prompt))
        except ValueError:
            print("Invalid input. Please enter a valid number.")

def get_float_input(prompt):
    while True:
        try:
            return float(input(prompt))
        except ValueError:
            print("Invalid input. Please enter a valid number.")
            
def generate_output_content(i, type, custom_name):
    # Create the output content
    resource_name = f"{i}_{type}_{custom_name.replace(' ', '_')}"
    output_content = textwrap.dedent(f'''
        output "{resource_name}" {{
            value = "${{datadog_monitor.{resource_name}.id}}"
        }}
    ''')

    return output_content

def generate_hcl_content(i, type, custom_name, query, message, tags, critical):
    # Create the HCL content
    resource_name = f"{i}_{type}_{custom_name.replace(' ', '_')}"
    monitor_name = f"[SEV{i}][{type}] {custom_name}"
    hcl_content = textwrap.dedent(f'''
        resource "datadog_monitor" "{resource_name}" {{
            name        = "{monitor_name}"
            type        = "{'composite' if type == 'composite' else 'query alert'}"
            query       = "{query}"
            message     = "{message}"
            tags        = {tags}
    ''')

    if type == 'anomaly':
        hcl_content += textwrap.dedent(f'''
            monitor_thresholds {{
                critical = 1.0
                critical_recovery = 0.0
            }}
        ''')
    elif critical is not None:
        hcl_content += textwrap.dedent(f'''
            monitor_thresholds {{
                critical = {critical}
            }}
        ''')

    hcl_content += textwrap.dedent(f'''
            notify_audit            = false
            require_full_window     = true
            notify_no_data          = false
            renotify_interval       = 0
            include_tags            = true
            new_group_delay         = 60
            timeout_h               = 1
            notification_preset_name = "hide_handles"
            priority = {i}
        }}
    ''')

    return hcl_content

def create_datadog_monitor():
    print_logo()
    hcl_content = ""
    output_content = ""

    while True:
        # Define valid monitor types
        valid_monitor_types = ['anomaly', 'threshold', 'change', 'composite']

        # Display the monitor types to the user
        print("Welcome to Ddog Monitor Composer!")
        print("This tool will guide you through the process of creating a Datadog monitor.")
        print("Choose type of monitor you want to create:")
        for i, monitor_type in enumerate(valid_monitor_types, 1):
            print(f"{i}. {monitor_type}")

        # Get user input
        while True:
            choice = input("Enter the number of your choice: ")
            if not choice.isdigit() or int(choice) not in range(1, len(valid_monitor_types) + 1):
                print("Invalid choice. Please enter a number from the list.")
            else:
                type = valid_monitor_types[int(choice) - 1]
                break
            
        custom_name = input("Enter the name of the monitor: ")
        query = input("Enter the query of the monitor: ")
        message = input("Enter the message of the monitor: ")
        tags = input("Enter the tags of the monitor (comma separated): ").split(',')

        if type == 'change':
            critical = get_float_input("Enter the threshold of the monitor: ")
        elif type == 'anomaly':
            critical = 1.0
        elif type == 'composite':  # Set critical to None for composite monitors
            critical = None
        else:
            critical = get_float_input("Enter the critical level of the monitor: ")

        num_monitors = get_integer_input("Enter the number of monitors to create: ")

        for i in range(1, num_monitors + 1):
            hcl_content += generate_hcl_content(i, type, custom_name, query, message, tags, critical)
            output_content += generate_output_content(i, type, custom_name)

        another_monitor = get_valid_input(
            "Do you want to create another monitor? (y/n): ",
            ['y', 'n'],
            "Invalid input. Please enter 'y' or 'n'."
        )

        if another_monitor == 'n':
            break

        print("Monitor creation process completed.")


    # Write the HCL content to a file
    try:
        with open('monitor.tf', 'w') as f:
            f.write(hcl_content)
        with open('outputs.tf', 'w') as f:
            f.write(output_content)
        with open('provider.tf', 'w') as f:
            f.write("""
            terraform {
                required_providers {
                    datadog = {
                        source = "Datadog/datadog"
                    }
                }
            }
            provider "datadog" {
              api_key = var.datadog_api_key
              app_key = var.datadog_app_key
              api_url = var.datadog_host
            }
            """)
            
    except IOError:
        print("Error writing to file.")
    else:
        print(f'HCL files monitor.tf, outputs.tf, and provider.tf created.')

if __name__ == "__main__":
    create_datadog_monitor()
