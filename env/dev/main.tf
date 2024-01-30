terraform {
  cloud {
    organization = "skreen"

    workspaces {
      name = "practice"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
module "dev_infra" {
  source                  = "../../blueprint"
  ipv4_primary_cidr_block = "10.0.0.0/16"
  vpc_name                = "m_cluster_vpc"
  igw_name                = "my_igw"
  subnets = [
    {
      cidr_block        = "10.0.1.0/24",
      name              = "public_subnet",
      allow_public_ip   = true,
      availability_zone = "us-east-1a"
    },
    {
      cidr_block        = "10.0.2.0/24",
      name              = "private_subnet",
      allow_public_ip   = false,
      availability_zone = "us-east-1b"
    }
  ]
}