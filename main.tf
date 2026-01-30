terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "2f9ed072-c97d-4e40-aed4-92cbb0153a56"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG4"
    storage_account_name = "jenkinsstatealice"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG2"
  location = "westeurope"
}




