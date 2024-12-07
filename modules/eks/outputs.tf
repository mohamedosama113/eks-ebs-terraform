output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_role_arn" {
  value = module.eks.cluster_iam_role_name
}
