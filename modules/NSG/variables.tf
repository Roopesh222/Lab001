variable "nsg_variable" {
  type = map(object({
    name = string
  }))
}
variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}