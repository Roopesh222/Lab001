variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}

variable "virtual_network_variable" {
  type = map(object({
    name          = string
    address_space = list(string)
  }))
}

variable "subnet_variable" {
  type = map(object({
    virtual_network_name = string
    name                 = string
    address_prefixes     = list(string)
  }))
}

variable "network_interface_variable" {
  type = map(object({
    subnet_name          = string
    virtual_network_name = string
    name                 = string
    ip_config_name       = string
    ip_allocation        = string
  }))
}

variable "virtual_machine_variable" {
  type = map(object({
    nic_name             = string
    name                 = string
    size                 = string
    admin_username       = string
    admin_password       = string
    computer_name        = string
    caching              = string
    storage_account_type = string
    publisher            = string
    offer                = string
    sku                  = string
    version              = string
  }))
}

variable "nsg_variable" {
  type = map(object({
    name = string
  }))
}
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
