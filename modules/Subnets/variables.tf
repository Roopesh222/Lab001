variable "subnet_variable" {
  type = map(object({
    virtual_network_name = string
    name                 = string
    address_prefixes     = list(string)
  }))
}

variable "resource_group_name" {
  type = string
}