variable "resource_group_name" {

  description = "Resource group where acr resources will be deployed."

  type = string

}

variable "location" {

  description = "Azure region for the deployment."

  type = string

}


variable "acr_name" {

  description = "Name of the Azure Container Registry."

  type = string

}

variable "environment" {

  description = "Deployment environment"

  type = string

}

variable "tags" {

  description = "Tags to apply to the container registry."

  type = map(string)
}


