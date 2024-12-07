provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr         = var.vpc_cidr
  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
  availability_zones = var.availability_zones
}

module "eks" {
  source = "./modules/eks"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
}

module "csi" {
  source = "./modules/csi"

  cluster_name   = module.eks.cluster_name
  cluster_role_arn = module.eks.cluster_role_arn
}
