
module "vpc" {
  source                  = "../modules/vpc"
  ipv4_primary_cidr_block = var.ipv4_primary_cidr_block
  vpc_name                = var.vpc_name
  igw_name                = var.igw_name
}

module "private_subnet" {
  source  = "../modules/subnet"
  vpc_id  = module.vpc.vpc_id
  subnets = var.subnets
}