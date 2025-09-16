provider "azurerm" {
 features {
   
 }
}


# resource "azurerm_resource_group" "example" {
#   name     = "example-resources"
#   location = "West Europe"
# }

resource "azurerm_network_security_group" "example" {
  name                = var.nsg_name 
  location            = var.nsg_location
  resource_group_name = var.nsg_resource_group
}

resource "azurerm_virtual_network" "example" {
  name                = var.name
  location            = var.vnet_location
  resource_group_name = var.vnet_resource_group
  address_space       = var.address_space
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  tags = {
    environment = "Production"
  }
}