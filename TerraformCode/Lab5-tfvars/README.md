main.tf:
The main.tf file is the primary entry point for your Terraform configuration.
It contains the resource definitions (such as AWS EC2 instances, S3 buckets, etc.) and their configurations.
You define your infrastructure components here, specifying how they should be created, configured, and connected.
Think of it as the blueprint for your digital infrastructure1.
variables.tf:
In the variables.tf file, you declare input variables for your Terraform module.
Input variables allow you to customize your infrastructure by providing values from outside the configuration.
For example, you can define variables like instance_type, region, or any other parameter that you want to make configurable.
These variables can be set via command-line arguments, environment variables, or .tfvars files2.
outputs.tf:
The outputs.tf file defines output variables.
Output variables provide information about the state of resources after deployment.
They act as return values for a Terraform module, allowing you to access resource attributes and other important details.
Common use cases include displaying public IP addresses, DNS names, and other crucial data from the cloud infrastructure.
Outputs can be used within Terraform to share data between modules or integrated with other systems.