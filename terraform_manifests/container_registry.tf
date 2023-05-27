module "azurerm_container_registry" {
  source        = "./modules/ACR"
  registry_name = local.registry_name
  rg_location   = var.rg_location
  rg_name       = var.rg_name
  sku           = "Basic"
}