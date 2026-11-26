resource "azurerm_resource_group" "learning" {
  name     = "rg-opentofu-learning"
  location = var.location

  tags = {
    environment = "test"
    managed_by  = "opentofu"
  }
}

resource "azurerm_resource_group" "rg_network_hub" {
  name     = "rg-network-hub"
  location = var.location

  tags = {
    environment = "prd"
    managed_by  = "opentofu"
  }
}