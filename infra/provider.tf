terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

  backend "azurerm" {
    subscription_id      = "6e977b0d-998c-42d7-97ed-dd70040cff12"
    resource_group_name  = "ahmedtm"
    storage_account_name = "ahmedtm951b"
    container_name       = "tfstategitops"
    key                  = "terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}