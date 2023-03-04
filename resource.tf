/*
resource "azurerm_storage_account" "NCS-Storage" {
  resource_group_name      = var.resoure_group_name
  location                 = var.location
  name                     = "ncsstorage1234"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
*/

resource "azurerm_windows_virtual_machine" "myvm" {
  name                  = var.vmname
  location              = var.location
  resource_group_name   = var.resoure_group_name
  size                  = var.size
  admin_username        = var.uname
  admin_password        = var.pword
  network_interface_ids = [azurerm_network_interface.myvmnic.id]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }

}
