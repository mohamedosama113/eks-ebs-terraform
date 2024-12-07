provider "aws" {
  region = var.region
}
module "VPC" {
  source           = "./modules/vpc"
  region           = var.region
  cidr_block         = var.cidr_block
  private_subnets   = var.private_subnets
  public_subnets    = var.public_subnets
  vpc_name = var.vpc_name
  azs  = var.azs

}

module "EKS" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  subnet_ids   = module.VPC.private_subnets
  region = var.region
  vpc_id= module.VPC.vpc_id
}
