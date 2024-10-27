data "azurerm_virtual_network" "virtual_network" {
  for_each            = var.subnet_variable
  name                = each.value["virtual_network_name"]
  resource_group_name = var.resource_group_name
}


resource "azurerm_subnet" "subnet" {
  for_each             = var.subnet_variable
  name                 = each.value["name"]
  virtual_network_name = data.azurerm_virtual_network.virtual_network[each.key].name
  resource_group_name  = var.resource_group_name
  address_prefixes     = each.value["address_prefixes"]
}