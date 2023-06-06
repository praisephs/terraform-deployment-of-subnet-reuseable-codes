# Defines terraform provider and version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"

    }
  }
 }

 provider "azurerm" {
  features {}
}