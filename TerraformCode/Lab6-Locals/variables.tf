

variable "location" {
  description = "The region in which the resources will be deployed"
  type        = string
  default     = "southeastasia"
}
variable "name" {
  description = "The name of the resource group"
  type        = string
  default     = "Example6"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "tflearn2024"
}
