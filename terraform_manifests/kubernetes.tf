module "Kubernetes" {
  source = "./modules/AKS"
  aks_location = azurerm_resource_group.rg01.location
  aks_name = var.aks_name 
  aks_rg_name = azurerm_resource_group.rg01.name
  client_id = module.service_principal.client_id
  client_secret = module.service_principal.client_password
  depends_on = [ module.service_principal ]
}