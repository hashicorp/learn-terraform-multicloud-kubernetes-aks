output "resource_group_name" {
  description = "Azure resource group name"
  value       = azurerm_resource_group.default.name
}

output "kubernetes_cluster_name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.default.name
}

output "host" {
  description = "AKS endpoint"
  value       = azurerm_kubernetes_cluster.default.kube_config.0.host
}

output "client_key" {
  description = "AKS client key"
  value       = azurerm_kubernetes_cluster.default.kube_config.0.client_key
  sensitive   = true
}

output "client_certificate" {
  description = "AKS client certificate"
  value       = azurerm_kubernetes_cluster.default.kube_config.0.client_certificate
  sensitive   = true
}

output "cluster_ca_certificate" {
  description = "AKS cluster CA"
  value       = azurerm_kubernetes_cluster.default.kube_config.0.cluster_ca_certificate
  sensitive   = true
}

