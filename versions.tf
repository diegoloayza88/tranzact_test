terraform {
  required_version = ">= 1.2.9"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "tranzact-resource-group"
    storage_account_name = "tzteststorageaccount"
    container_name = "tranzact-storage-container"
    key = "terraform.tfstate"
  }
}