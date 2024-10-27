resource "azurerm_network_security_rule" "nsg_inbound_rule" {
  for_each                    = var.inbound_rule_variable
  name                        = each.value["name"]
  priority                    = each.value["priority"]
  direction                   = each.value["direction"]
  access                      = each.value["access"]
  protocol                    = each.value["protocol"]
  source_port_range           = each.value["inbound_source_port_range"]
  destination_port_range      = each.value["inbound_destination_port_range"]
  source_address_prefix       = each.value["inbound_source_address_prefix"]
  destination_address_prefix  = each.value["inbound_destination_address_prefix"]
  resource_group_name         = var.resource_group_name
  network_security_group_name = each.value["network_security_group_name"]
}