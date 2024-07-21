Terraform Variables:
Input variables allow you to customize your Terraform configuration without modifying the source code.
You can declare variables with data types or default values.
Example variable declarations:
variable "thing_i_made_up" {
  type = string
}

variable "random_number" {
  default = 5
}

variable "dogs" {
  type    = list(object({
    name  = string
    breed = string
  }))
  default = [
    { name = "Sparky", breed = "poodle" }
  ]
}

Terraform Outputs:
Output values act like return values for a Terraform module.
They provide information about the infrastructure after deployment.
Example output definition:
output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

