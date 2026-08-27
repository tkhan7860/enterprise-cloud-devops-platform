variable "location" {
  description = "Azure region for the development environment."
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
  description = "Resource group for the development platform."
  type        = string
  default     = "rg-enterprise-devops-dev"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}
