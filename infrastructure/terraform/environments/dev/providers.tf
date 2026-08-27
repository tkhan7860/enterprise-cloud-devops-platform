terraform {
  required_version = "~> 1.15"

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-enterprise-devops"
    storage_account_name = "sttfstateentdev01"
    container_name       = "tfstate"
    key                  = "enterprise-cloud-devops-platform-dev.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}
