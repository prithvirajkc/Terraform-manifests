variable "rg_name" {
  description = "Resource group name"
  type = string
}

variable "rg_location" {
  description = "Resource group location"
  type = string
}

variable "registry_name" {
  description = "Name of the Azure Container Registry"
  type = string
}

variable "sp_name" {
  description = "Name of service principal"
  type = string
}

variable "aks_name" {
  type = string 
  description = "Name of the Kubernetes"
}