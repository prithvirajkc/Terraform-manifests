data "azurerm_subscription" "sub" {

}

module "service_principal" {
  source  = "./modules/Service_Principal"
  sp_name = var.sp_name
  depends_on = [ azurerm_resource_group.rg01 ]
}

resource "azurerm_role_assignment" "sp1" {
  scope                = data.azurerm_subscription.sub.id
  role_definition_name = "Contributor"
  principal_id         = module.service_principal.object_id
  depends_on           = [module.service_principal]
}