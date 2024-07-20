# Terraform-Demo
Terraform is an open-source tool that allows you to define your infrastructure as code. With Terraform, you can build, modify, and version infrastructure efficiently and safely. It works with both low-level components (such as compute instances, storage, and networking) and high-level components (like DNS entries and SaaS features) in various cloud environments1. If you have any specific questions or need further details, feel free to ask! 😊🚀

In Terraform, the main.tf file serves as the starting point for implementing your infrastructure as code. Here’s what you need to know about it:

**Purpose of main.tf:**
    The main.tf file contains the logic for defining and managing your infrastructure resources.
    It includes Terraform resources, but can also contain datasources and locals.
    
# Configure the Azure provider
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


resource "azurerm_resource_group" "rg" {
  name     = "example-resources"
  location = "southeast asia"
}
    

REFERENCE:  https://developer.hashicorp.com/terraform


