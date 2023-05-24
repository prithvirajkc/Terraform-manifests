variable "registry_name" {
  description = "Name of the registry"
  type = string
}

variable "rg_name" {
  description = "Resource group for ACR"
  type = string
}

variable "rg_location" {
  description = "Resource group location for ACR"
  type = string
}

variable "sku" {
  description = "SKU for ACR"
  type = string
}