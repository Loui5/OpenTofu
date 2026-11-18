resource "azurerm_resource_group" "learning" {
  name     = "rg-opentofu-learning"
  location = "UK South"

  tags = {
    environment = "test"
    managed_by  = "opentofu"
  }
}