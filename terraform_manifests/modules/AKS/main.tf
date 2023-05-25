resource "azurerm_kubernetes_cluster" "main" {
  name                = var.aks_name
  location            = var.aks_location
  resource_group_name = var.aks_rg_name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  service_principal {
    client_id = var.client_id
    client_secret = var.client_secret
  }
}