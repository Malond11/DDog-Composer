import json
import os

def generate_tf_files(json_files_directory="/home/mantas/Documents/web app tool", output_filename="main.tf"):
  """Generates Terraform code for Datadog monitors from JSON files.

  Args:
    json_files_directory: The directory containing JSON files (optional, default: "/home/mantas/Documents/web app tool").
    output_filename: The output filename for the Terraform code (optional, default: "main.tf").
  """

  monitor_tf_content = ""

  # Read and parse each JSON file
  for json_file in os.listdir(json_files_directory):
    if json_file.endswith(".json"):
      filepath = os.path.join(json_files_directory, json_file)
      with open(filepath, "r") as f:
        try:
          config = json.load(f)
        except json.JSONDecodeError:
          print(f"Error parsing JSON file: {filepath}")
          continue

        # Validate configuration (you can add specific checks here)
        if not validate_config(config):
          print(f"Invalid configuration in file: {filepath}")
          continue

        # Dynamically construct resource block based on monitor type
        monitor_tf_content += build_monitor_resource(config)

  # Write Terraform code to file
  output_filepath = os.path.join(json_files_directory, output_filename)
  with open(output_filepath, "w") as f:
    f.write(monitor_tf_content)
    print(f"Successfully wrote Terraform code to: {output_filepath}")

def build_monitor_resource(config):
  """Builds a Terraform resource block based on the monitor configuration.

  Args:
    config: A dictionary representing the Datadog monitor configuration.

  Returns:
    The Terraform resource block as a string.
  """

def build_monitor_resource(config):
    """Builds a Terraform resource block based on the monitor configuration.

    Args:
        config: A dictionary representing the Datadog monitor configuration.

    Returns:
        The Terraform resource block as a string.
    """

    monitor_type = config["type"]
    # Implement logic to handle different monitor types based on requirements
    # Here's an example for anomaly, change, query alert, and composite monitors:
    if monitor_type in ["anomaly", "change", "query alert", "composite"]:
        resource_block = f'resource "datadog_monitor" "monitor_{config["name"]}" {{\n'
        resource_block += f'  name               = "{config["name"]}"\n'
        resource_block += f'  type               = "{monitor_type}"\n'
        resource_block += f'  query              = "{config["query"]}"\n'
        resource_block += f'  message            = "{config["message"]}"\n'
        resource_block += f'  tags              = {json.dumps(config["tags"], indent=2)}\n'
        if "thresholds" in config["options"]:
            resource_block += '  options {\n\n'
            for threshold_key, threshold_value in config["options"]["thresholds"].items():
                resource_block += f'    {threshold_key}      = {json.dumps(threshold_value, indent=2)}\n'
            resource_block += '  }\n'
        resource_block += '}\n'
    else:
        print(f"Warning: Unsupported monitor type: {monitor_type}")
        resource_block = ""

    return resource_block

def validate_config(config):
  """Validates the minimum required fields in the configuration.

  Args:
    config: A dictionary representing the Datadog monitor configuration.

  Returns:
    True if the configuration is valid, False otherwise.
  """

  required_fields = ["name", "type", "query", "message", "tags"]
  return all(field in config for field in required_fields)

# Call the main function
generate_tf_files()
