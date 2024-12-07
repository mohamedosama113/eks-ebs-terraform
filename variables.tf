variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnets" {
  description = "Public subnet CIDR blocks"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "Private subnet CIDR blocks"
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "example-eks"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  default     = "1.29"
}
