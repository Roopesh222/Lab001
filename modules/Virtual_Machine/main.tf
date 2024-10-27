data "azurerm_network_interface" "network_interface" {
  for_each            = var.virtual_machine_variable
  name                = each.value["nic_name"]
  resource_group_name = var.resource_group_name
}

resource "azurerm_windows_virtual_machine" "windows_virtual_machine" {
  for_each              = var.virtual_machine_variable
  name                  = each.value["name"]
  resource_group_name   = var.resource_group_name
  location              = var.location
  network_interface_ids = [data.azurerm_network_interface.network_interface[each.key].id]
  size                  = each.value["size"]
  admin_username        = each.value["admin_username"]
  admin_password        = each.value["admin_password"]
  computer_name         = each.value["computer_name"]
  os_disk {
    caching              = each.value["caching"]
    storage_account_type = each.value["storage_account_type"]
  }
  source_image_reference {
    publisher = each.value["publisher"]
    offer     = each.value["offer"]
    sku       = each.value["sku"]
    version   = each.value["version"]
  }
}