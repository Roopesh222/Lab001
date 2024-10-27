variable "inbound_rule_variable" {
  type = map(object({
    name                               = string
    priority                           = number
    direction                          = string
    access                             = string
    protocol                           = string
    inbound_source_port_range          = string
    inbound_destination_port_range     = number
    inbound_source_address_prefix      = string
    inbound_destination_address_prefix = string
    network_security_group_name        = string
  }))
  default = {
  }
}

variable "resource_group_name" {
  type = string
}
