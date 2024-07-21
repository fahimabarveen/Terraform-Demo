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

storage account in Terraform is managed using the azurerm_storage_account resource.
It represents an Azure Storage Account where you can store various types of data (blobs, files, tables, queues, etc.).
Example Usage:
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                = "storageaccountname"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  account_tier        = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = "staging"
  }
}
In this example:
We create a resource group named “example-resources” in the “West Europe” region.
Then, we define a storage account named “storageaccountname” within that resource group.
The storage account has a standard tier and geo-redundant replication.
We also add a tag to indicate the environment as “staging.”
