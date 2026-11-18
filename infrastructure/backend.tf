terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tofustate-01"
      storage_account_name = "sttofu01loui5"
      container_name       = "tfstate"
      key                  = "dev-opentofu-tfstate"
      use_azuread_auth     = true
      use_oidc             = true
    }
}