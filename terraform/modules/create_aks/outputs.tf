output "aks_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}

resource "local_file" "kubeconfig" {
  content  = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
  filename = "${path.module}/../../../ansible/kubeconfig_aks"  # Se creará en la misma carpeta donde ejecutes terraform
}