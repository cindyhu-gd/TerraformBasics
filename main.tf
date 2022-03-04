# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "devsandboxrg" {
  name     = "SOFTWARE-DEV-SANDBOX-RESTRICTED-RG"
  location = var.primary_location
}

resource "azurerm_storage_account" "cindysa" {
  name                     = "cindyteststorageaccount"
  resource_group_name      = azurerm_resource_group.devsandboxrg.name
  location                 = azurerm_resource_group.devsandboxrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    BusinessOwner = "Cindy Hu"
  }
}