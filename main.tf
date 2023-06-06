resource "azurerm_resource_group" "resource_group_name" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
  
}

resource "azurerm_virtual_network" "virtual_network_name" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.resource_group_name.location
  resource_group_name = azurerm_resource_group.resource_group_name.name
  address_space       = var.address_space
}

resource "azurerm_subnet" "subnet-names" {
  for_each = { for subnet in var.subnet-names : subnet.name => subnet }

  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.resource_group_name.name
  virtual_network_name = azurerm_virtual_network.virtual_network_name.name
  address_prefixes     = [each.value.cidr]
}