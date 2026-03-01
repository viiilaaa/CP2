resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "${var.PracticeName}-aks-cluster"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.PracticeName}-aks"
  sku_tier            = "Standard"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s_v2"
  }

  identity {
    type = "SystemAssigned"
  }
  
}