terraform {
  required_version = ">= 1.10.0"

  required_providers {
    azurerm = {
      source  = "opentofu/azurerm"
      version = "~> 4.0"
    }
  }
}