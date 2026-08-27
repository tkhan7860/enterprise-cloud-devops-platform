variable "environment" {

  description = "Deployment environment"

  type = string

}


variable "location" {

  description = "Azure region for the deployment."

  type = string

}

variable "resource_group_name" {

  description = "Resource group where network resources will be deployed."

  type = string

}

variable "vnet_name" {

  description = "vitrual network name"

  type = string

}

variable "address_space" {

  description = "VNet Address Space"

  type = list(string)

}

variable "aks_subnet_cidr" {

  description = "aks_subnet"

  type = string

}


variable "application_subnet_cidr" {

  description = "application_subnet"

  type = string

}


variable "private_endpoint_subnet_cidr" {

  description = "private_endpoint_subnet"

  type = string

}


variable "tags" {

  description = "Tags to apply to network resources."

  type = map(string)
}
