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

variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}

