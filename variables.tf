variable "subscription_id" {
  description = "ID de la suscripcion de Azure donde se crea todo"
  type        = string
}

variable "location" {
  description = "Region de Azure para los recursos"
  type        = string
  default     = "brazilsouth"
}

variable "rg_name" {
  description = "Nombre del Resource Group del laboratorio"
  type        = string
  default     = "rg-terraform-lab"
}
