output "public-ip" {
  value = azurerm_public_ip.public-ip.ip_address
}

output "vmname" {
  value = azurerm_windows_virtual_machine.myvm.name
 }