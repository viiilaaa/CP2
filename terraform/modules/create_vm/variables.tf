variable "prefix" {
  description = "Nombre de la práctica"
  type        = string
  default     = "CP2-svila"
}

variable "resource_group_name" {
  description = "Nombre del resource group"
  type        = string
}

variable "resource_group_location" {
  description = "Ubicación del resource group"
  type        = string
}

variable "nametags" {
  description = "Etiquetas para los recursos"
  type        = map(string)
}

variable "vm_size" {
  description = "Tamaño de la máquina virtual"
  type        = string
  default     = "Standard_B2s_v2"
}

variable "admin_username" {
  description = "Nombre de usuario administrador para la VM"
  type        = string
  default     = "azureuser"
}

variable "image_reference" {
  description = "Referencia de la imagen para la VM"
  type        = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}