variable "ubicacion_recursos" {
  description = "Región de Azure donde se crearán los recursos"
  type        = string
  default     = "francecentral"
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}