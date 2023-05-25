
output "client_id" {
  value = azuread_application.example.application_id
}

output "client_password" {
  value = azuread_service_principal_password.pwd.value
}

output "tenant_id" {
  value = azuread_service_principal.example.application_tenant_id
}

output "object_id" {
  value = azuread_service_principal.example.object_id
}