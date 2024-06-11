Organize your Terraform project files for clarity and maintainability:

| File/Directory       |
|----------------------|
| .                    |
| ├── main.tf          |
| ├── variables.tf     |
| ├── outputs.tf       |
| ├── terraform.tfvars |
| └── modules          |
|     └── ec2          |
|         ├── main.tf  |
|         ├── variables.tf |
|         └── outputs.tf   |



Documentation
main.tf

This file is the main configuration file for Terraform. It invokes the EC2 module and defines outputs.

variables.tf

This file defines input variables used by both the root configuration and the EC2 module. It includes variables such as instance_type, ami_id, subnet_id, security_group_ids, key_name, etc.

outputs.tf

This file defines the output variables for the root configuration. It outputs the EC2 instance ID created by the module.

terraform.tfvars

This file contains the actual values for the variables used in the Terraform configuration. Below is an example content:

instance_type = "t2.micro"     # Specify instance type
ami_id = "ami-ID"              # Specify AMI ID
subnet_id = "subnet-ID"        # Specify subnet ID
security_group_ids = ["sg-ID"] # Specify security group ID
key_name = "Pem file"          # Specify existing pem file name without .pem extension

modules/ec2/main.tf

This file is the configuration for the EC2 module. It creates an AWS EC2 instance with the specified parameters such as instance type, AMI ID, subnet ID, security group IDs, and key pair name.

modules/ec2/variables.tf

This file defines input variables for the EC2 module. It includes variables such as instance_type, ami_id, subnet_id, security_group_ids, key_name, etc.

modules/ec2/outputs.tf

This file defines the output variable for the EC2 module. It outputs the ID of the EC2 instance created.

Usage :

1 : Initialize Terraform:

terraform init

2 : Customize Variables:

Modify the values in terraform.tfvars as per your requirements.

3 : Preview Changes:

terraform plan

4 : Apply Changes:

terraform apply

Type yes when prompted to confirm the action.

5 : Destroy Infrastructure:
When you're done, destroy the infrastructure created by Terraform:

terraform destroy
