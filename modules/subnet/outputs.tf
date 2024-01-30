
# output "public_subnet_info" {
#   value = element([
#     for subnet in resource.aws_subnet.m_subnets : subnet
#     if subnet.map_public_ip_on_launch == true
#   ], 0)
# }

# output "public_subnets_list" {
#   value = {
#     for subnet in resource.aws_subnet.m_subnets :
#     subnet.id => subnet.cidr_block
#     if subnet.map_public_ip_on_launch == true
#   }
# }

# output "private_subnet_info" {
#   value = element([
#     for subnet in resource.aws_subnet.m_subnets : subnet
#     if subnet.map_public_ip_on_launch == false
#   ], 0)
# }

# output "private_subnets_list" {
#   value = {
#     for subnet in resource.aws_subnet.m_subnets :
#     subnet.id => subnet.cidr_block
#     if subnet.map_public_ip_on_launch == false
#   }
# }