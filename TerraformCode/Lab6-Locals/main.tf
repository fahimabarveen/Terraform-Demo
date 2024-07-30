terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "examplenew" {
  name     = "Example6"
  location = "southeastasia"
}

resource "azurerm_storage_account" "storageaccount" {  # Corrected resource name from 'stroageaccount' to 'storageaccount'
  name                     = "tflearn2024"
  resource_group_name      = azurerm_resource_group.examplenew.name
  location                 = azurerm_resource_group.examplenew.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
