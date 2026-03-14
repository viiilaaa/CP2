
output "public_ip" {
  description = "IP pública de la VM"
  value       = azurerm_public_ip.public_ip.ip_address
}
output "vm_admin_username" {
  description = "User administrador para SSH"
  value       = azurerm_linux_virtual_machine.vm.admin_username
}