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

resource "azurerm_virtual_network" "vnet_hub" {
  name                = "vnet-hub"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_network_hub.name
  address_space       = ["10.0.0.0/24"]

  tags = {
    environment = "prd"
    managed_by  = "opentofu"
  }
}

# Github runner

resource "azurerm_resource_group" "rg_github_runner" {
  name     = "rg-github-runner"
  location = var.location

  tags = {
    environment = "prd"
    managed_by  = "opentofu"
  }
}

resource "azurerm_virtual_network" "vnet_github_runner" {
  name                = "vnet-github-runner"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_github_runner.name
  address_space       = ["10.0.1.0/24"]


  tags = {
    environment = "prd"
    managed_by  = "opentofu"
  }
}