resource "azurerm_network_security_group" "nsg" {
  for_each = var.nsg_variable
  name = each.value["name"]
  location = var.location
  resource_group_name = var.resource_group_name
}