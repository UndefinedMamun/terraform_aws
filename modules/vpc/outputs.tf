output "vpc_id" {
  value = resource.aws_vpc.my_vpc.id
}
# output "public_route_table_info" {
#   value = element([
#     for route_table in resource.aws_route_table.my_route_table : route_table
#     if route_table.tags.Name == "MyPublicRouteTable"
#   ], 0)
# }

# output "private_route_table_info" {
#   value = element([
#     for route_table in resource.aws_route_table.m_route_table : route_table
#     if route_table.tags.Name == "MyPrivateRouteTable"
#   ], 0)
# }