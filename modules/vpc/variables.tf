variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "public_subnets" {
  description = "Public subnet CIDR blocks"
}

variable "private_subnets" {
  description = "Private subnet CIDR blocks"
}

variable "availability_zones" {
  description = "List of availability zones"
}
