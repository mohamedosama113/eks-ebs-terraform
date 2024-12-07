variable "cluster_name" {
  description = "EKS cluster name"
}

variable "cluster_version" {
  description = "EKS cluster version"
}

variable "subnets" {
  description = "Private subnets for the EKS cluster"
}

variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
}
