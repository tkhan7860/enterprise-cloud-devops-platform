output "resource_group_name" {
  description = "Development platform resource group."
  value       = azurerm_resource_group.platform.name
}

output "resource_group_location" {
  description = "Development platform Azure region."
  value       = azurerm_resource_group.platform.location
}

output "virtual_network_id" {
  description = "ID of the development virtual network."
  value       = module.network.virtual_network_id
}

output "virtual_network_name" {
  description = "Name of the development virtual network."
  value       = module.network.virtual_network_name
}

output "aks_subnet_id" {
  description = "ID of the AKS subnet."
  value       = module.network.aks_subnet_id
}

output "application_subnet_id" {
  description = "ID of the application subnet."
  value       = module.network.application_subnet_id
}

output "private_endpoint_subnet_id" {
  description = "ID of the private endpoint subnet."
  value       = module.network.private_endpoint_subnet_id
}

output "acr_id" {
  description = "ID of the Azure Container Registry."
  value       = module.acr.acr_id
}

output "acr_name" {
  description = "Name of the Azure Container Registry."
  value       = module.acr.acr_name
}

output "acr_login_server" {
  description = "Login server of the Azure Container Registry."
  value       = module.acr.acr_login_server
}
