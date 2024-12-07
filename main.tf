provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source      = "./modules/vpc"
  vpc_name    = var.vpc_name
  cidr_block  = var.vpc_cidr_block
}

module "eks" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnets
}
