# Basic EC2 deployment example

## Requirements

* You must have a valid AWS profile. If you do not have the profile *economist-ds-dev*, change the `.tfvars` file to some profile that you have access to. 
  
## Usage

1. Initialize the terraform state
    ```bash
    terraform init
    ```

2. Execute the script 
    ```bash
    terraform apply -auto-approve
    ```

3. (optional) Destroy the resources when no longer needed
    ```bash
    terraform destroy -auto-approve
    ```

Notes:
 
* the instance, although running and publicly available, is not configured to serve any content.
* the instance is not configured with an SSH key, so logging into the instance is not possible.
* check the `examples/advanced` to see how to solve the two above problems.


