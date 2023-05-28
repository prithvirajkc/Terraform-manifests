module "DNS_ZONE" {
  source = "./modules/DNS_ZONES"
  dns_name = var.dns_name 
  rg_name = azurerm_resource_group.rg01.name
  depends_on = [ azurerm_resource_group.rg01 ]
}