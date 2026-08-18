terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "lab" {
  name     = var.rg_name
  location = var.location
}

resource "random_string" "sufijo" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_storage_account" "lab" {
  name                     = "sterraformlab${random_string.sufijo.result}"
  resource_group_name      = azurerm_resource_group.lab.name
  location                 = azurerm_resource_group.lab.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
