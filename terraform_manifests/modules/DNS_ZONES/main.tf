resource "azurerm_dns_zone" "example-public" {
  name                = var.dns_name
  resource_group_name = var.rg_name
}