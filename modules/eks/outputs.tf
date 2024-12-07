
output "cluster_name" {
  description = "EKS Cluster Name"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Cluster endpoint URL"
  value       = module.eks.cluster_endpoint
}
