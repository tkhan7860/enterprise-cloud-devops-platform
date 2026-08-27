variable "location" {
  description = "Azure region for Terraform state resources."
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
  description = "Resource group used for Terraform remote state."
  type        = string
  default     = "rg-tfstate-enterprise-devops"
}

variable "storage_account_name" {
  description = "Globally unique Azure Storage Account name."
  type        = string
  default     = "sttfstateentdev01"
}

variable "container_name" {
  description = "Blob container used for Terraform state."
  type        = string
  default     = "tfstate"
}
