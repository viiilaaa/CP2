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
