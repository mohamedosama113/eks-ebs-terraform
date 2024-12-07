provider "aws" {
  region = var.aws_region
}
module "VPC" {
  source           = "./modules/vpc"
  region           = var.region
  cidr_block         = var.cidr_block
  private_subnets   = var.private_subnets
  public_subnets    = var.public_subnets
}

module "EKS" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  subnet_ids   = var.private_subnets
  vpc_id     = module.VPC.vpc_id
}
