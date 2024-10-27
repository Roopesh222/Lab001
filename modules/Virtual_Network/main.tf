resource "azurerm_virtual_network" "virtual_network" {
  for_each            = var.virtual_network_variable
  name                = each.value["name"]
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = each.value["address_space"]
}