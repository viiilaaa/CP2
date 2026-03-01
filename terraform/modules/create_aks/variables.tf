variable "PracticeName" {
  description = "Nombre de la práctica"
  type        = string
  default     = "CP2"
}

variable "resource_group_name" {
  description = "Nombre del resource group"
  type        = string
}

variable "resource_group_location" {
  description = "Ubicación del resource group"
  type        = string
}

variable "acr_id" {
  type        = string
  description = "ID del Azure Container Registry para asignar permisos"
}