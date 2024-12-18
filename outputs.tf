
output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.EKS.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.EKS.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.EKS.cluster_name
}
