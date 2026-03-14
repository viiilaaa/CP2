
output "public_ip" {
  description = "IP pública de la VM"
  value       = module.vm-create.public_ip
}

output "vm_admin_username" {
  description = "User administrador para SSH"
  value       = module.vm-create.vm_admin_username
}

output "acr_login_server" {
  value       = module.acr-create.acr_login_server
  description = "La URL para hacer docker/podman login (ej: cp2.azurecr.io)"
}

output "acr_admin_username" {
  value = module.acr-create.acr_admin_username
}

output "acr_admin_password" {
  value     = module.acr-create.acr_admin_password
  sensitive = true 
}

output "aks_name" {
  value = module.aks-create.aks_name
}
