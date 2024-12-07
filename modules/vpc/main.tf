module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.18"

  name = var.vpc_name
  cidr = var.cidr_block

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets  = [cidrsubnet(var.cidr_block, 8, 0), cidrsubnet(var.cidr_block, 8, 1)]
  private_subnets = [cidrsubnet(var.cidr_block, 8, 2), cidrsubnet(var.cidr_block, 8, 3)]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
    tags = {
    Project     = "eks-ebs-terraform"
  }
}


