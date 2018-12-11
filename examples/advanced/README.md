# Basic EC2 deployment example

## Requirements

* You must have a valid AWS profile. If you do not have the profile *economist-ds-dev*, change the `.tfvars` file to some profile that you have access to. (Note, if you change the AWS account, you should probably update the `user-data` script, since it will not be able to load the expected app from ECR.)
  
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
 
* the instance is configured to serve a (older version) of the engagement team application.
* this app is stored in the amazon Elastic Container Registry, and it is loaded when the `user-data` script is executed.
* the instance is configured with an SSH key (`engagement-ec2-key`).


