variable "ipv4_primary_cidr_block" {
  type        = string
  description = "The primary IPv4 CIDR block for the VPC. Must be a valid, private CIDR that is not already being used within the AWS account."
  default     = null
}

variable "vpc_name" {
  type = string
}

# variable "subnet_configs" {
#   type = list(object({
#     subnet_cidr_blocks = string,
#     name               = string,
#     allow_public_ip    = bool,
#     availability_zone  = string
#   }))
# }

variable "igw_name" {
  type = string
}

# variable "nat_gateway_for_subnet" {
#   type = string
# }