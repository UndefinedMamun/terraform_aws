variable "ipv4_primary_cidr_block" {
  type    = string
  default = null
}

variable "vpc_name" {
  type = string
}

variable "igw_name" {
  type = string
}

variable "subnets" {
  type = list(object({
    name              = string
    cidr_block        = string
    availability_zone = string
    allow_public_ip   = bool # Only applicable for public subnets
  }))
  description = "List of subnets with their configurations"
  default     = []
}