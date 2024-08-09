output "vpc-id" {
  value = aws_vpc.main.id
}
output "rt-id" {
  value = aws_vpc.main.main_route_table_id
}