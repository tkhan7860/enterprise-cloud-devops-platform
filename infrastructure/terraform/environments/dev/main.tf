resource "azurerm_resource_group" "platform" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = var.environment
    Project     = "enterprise-cloud-devops-platform"
    ManagedBy   = "Terraform"
  }
}

module "network" {
  source = "../../modules/network"

  # Connect the module to our existing Dev resource group
  resource_group_name = azurerm_resource_group.platform.name

  # Environment-specific configuration
  environment = var.environment
  location    = var.location

  # Network configuration
  vnet_name                    = "vnet-enterprise-dev"
  address_space                = ["10.20.0.0/16"]
  aks_subnet_cidr              = "10.20.1.0/24"
  application_subnet_cidr      = "10.20.2.0/24"
  private_endpoint_subnet_cidr = "10.20.3.0/24"

  tags = {
    Environment = var.environment
    Project     = "enterprise-cloud-devops-platform"
    ManagedBy   = "Terraform"
  }
}

module "acr" {
  source = "../../modules/acr"

  resource_group_name = azurerm_resource_group.platform.name
  location            = var.location
  acr_name            = "acrenterpriseclouddev"
  environment         = var.environment

  tags = {
    Environment = var.environment
    Project     = "enterprise-cloud-devops-platform"
    ManagedBy   = "Terraform"
  }
}

module "aks" {
  source = "../../modules/aks"

  resource_group_name = azurerm_resource_group.platform.name
  location            = var.location

  cluster_name = "aks-enterprise-dev"
  dns_prefix   = "aks-enterprise-dev"

  kubernetes_version = null
  node_count         = 1
  vm_size            = "Standard_B2s"

  aks_subnet_id = module.network.aks_subnet_id
  acr_id        = module.acr.acr_id
}