data "azuread_service_principal" "sp01" {
  display_name = "sp-AKS"
}

resource "azuread_service_principal_password" "pwd" {
  service_principal_id = data.azuread_service_principal.sp01.object_id
}

module "Kubernetes" {
  source = "./modules/AKS"
  aks_location = azurerm_resource_group.rg01.location
  aks_name = var.aks_name 
  aks_rg_name = azurerm_resource_group.rg01.name
  client_id = data.azuread_service_principal.sp01.application_id
  client_secret = azuread_service_principal_password.pwd.value
}