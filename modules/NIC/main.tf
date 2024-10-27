data "azurerm_subnet" "subnet" {
  for_each             = var.network_interface_variable
  name                 = each.value["subnet_name"]
  virtual_network_name = each.value["virtual_network_name"]
  resource_group_name  = var.resource_group_name
}

resource "azurerm_network_interface" "network_interface" {
  for_each            = var.network_interface_variable
  name                = each.value["name"]
  resource_group_name = var.resource_group_name
  location            = var.location

  ip_configuration {
    name                          = each.value["ip_config_name"]
    private_ip_address_allocation = each.value["ip_allocation"]
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
  }
}