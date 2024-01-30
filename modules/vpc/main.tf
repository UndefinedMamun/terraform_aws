locals {
  # subnet_config_index = [for index in var.subnet_configs : var.subnet_configs[index]]

}

resource "aws_vpc" "my_vpc" {
  cidr_block           = var.ipv4_primary_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = var.vpc_name
  }
}

# resource "aws_subnet" "public_subnet" {
#   count                   = length(var.subnet_configs)
#   vpc_id                  = resource.aws_vpc.my_vpc.id
#   cidr_block              = var.subnet_configs[count.index].subnet_cidr_blocks
#   availability_zone       = var.subnet_configs[count.index].availability_zone
#   map_public_ip_on_launch = var.subnet_configs[count.index].allow_public_ip
#   tags = {
#     Name = var.subnet_configs[count.index].name
#   }
# }

resource "aws_internet_gateway" "my_igw" {
  vpc_id = resource.aws_vpc.my_vpc.id

  tags = {
    Name = var.igw_name
  }
}

# resource "aws_nat_gateway" "my_nat_gateway" {
#   subnet_id = test

#   tags = {
#     Name = "my_nat_gateway"
#   }
# }