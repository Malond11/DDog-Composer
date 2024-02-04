import json
import os

def generate_tf_files(configs):
  monitor_tf_content = ''

  for i, config in enumerate(configs):
    monitor_tf_content += f'resource "datadog_monitor" "monitor_{i}" {{\n'
    monitor_tf_content += f'  name               = "{config["name"]}"\n'
    monitor_tf_content += f'  type               = "{config["type"]}"\n'
    monitor_tf_content += f'  query              = "{config["query"]}"\n'
    monitor_tf_content += f'  message            = "{config["message"]}"\n'
    monitor_tf_content += f'  tags              = {json.dumps(config["tags"], indent=2)}\n'
    monitor_tf_content += '  options {\n\n'
    if "thresholds" in config["options"]:
      for threshold_key, threshold_value in config["options"]["thresholds"].items():
        monitor_tf_content += f'    {threshold_key}      = {json.dumps(threshold_value, indent=2)}\n'
    monitor_tf_content += '  }\n}\n'
  # ... rest of the function ...
  # Write to main.tf in the same directory as the JSON files
  with open(os.path.join(json_files_directory, "main.tf"), "w") as f:
    f.write(monitor_tf_content)

if __name__ == "__main__":
  # Specify the directory containing JSON files
  json_files_directory = "/home/mantas/Documents/web app tool"

  # List of JSON files
  json_files = ["anomaly.json", "change.json", "composite.json", "threshold.json"]

  # List to store the configurations
  configs = []

  # Read and parse each JSON file
  for json_file in json_files:
    with open(os.path.join(json_files_directory, json_file), 'r') as f:
      config = json.load(f)
      configs.append(config)

  # Generate the Terraform files
  generate_tf_files(configs)