variable "network_interface_variable" {
  type = map(object({
    subnet_name          = string
    virtual_network_name = string
    name                 = string
    ip_config_name       = string
    ip_allocation        = string
  }))
}

variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}