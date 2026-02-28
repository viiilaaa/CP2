
output "public_ip" {
  description = "IP pública de la VM"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "vm_id" {
  description = "ID de la máquina virtual"
  value       = azurerm_linux_virtual_machine.vm.id
}