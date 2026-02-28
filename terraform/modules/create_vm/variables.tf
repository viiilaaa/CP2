variable "ubicacion_recursos" {
  description = "Región de Azure donde se crearán los recursos"
  type        = string
  default     = "West Europe"
}

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
