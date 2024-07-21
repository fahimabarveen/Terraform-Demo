
variable "location" {
  description = "The region in which the resources will be deployed"
  type        = string
  default     = "southeast asia"
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example2"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "tflearn2024"
}