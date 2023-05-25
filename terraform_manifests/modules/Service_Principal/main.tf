data "azuread_client_config" "main" {}

resource "azuread_application" "example" {
  display_name = var.sp_name
  owners       = [data.azuread_client_config.main.object_id]
}

resource "azuread_service_principal" "example" {
  application_id               = azuread_application.example.application_id
  app_role_assignment_required = true
  owners                       = [data.azuread_client_config.main.object_id]
}

resource "azuread_service_principal_password" "pwd" {
  service_principal_id = azuread_service_principal.example.object_id
}