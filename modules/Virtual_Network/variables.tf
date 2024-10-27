variable "virtual_network_variable" {
  type = map(object({
    name          = string
    address_space = list(string)
  }))
}

variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}