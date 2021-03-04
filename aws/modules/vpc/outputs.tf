output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "vpc_cidr_block" {
  description = "VPC에 할당한 CIDR blocks"
  value       = aws_vpc.this.cidr_block
}

output "default_security_group_id" {
  description = "VPC default security group ID"
  value       = aws_vpc.this.default_security_group_id
}

output "default_network_acl_id" {
  description = "VPC default network ACL ID"
  value       = aws_vpc.this.default_network_acl_id
}

output "internet_gateway_id" {
  description = "Internet gateway ID"
  value       = aws_internet_gateway.this.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = aws_subnet.public.*.id
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = aws_subnet.private.*.id
}

output "database_subnet_ids" {
  description = "Database subnet IDs"
  value       = aws_subnet.database.*.id
}

output "database_subnet_group_id" {
  description = "Database subnet group ID"
  value       = aws_db_subnet_group.database[0].id
}

output "database_subnet_group_name" {
  description = "Database subnet group name"
  value       = aws_db_subnet_group.database[0].name
}

output "public_route_table_ids" {
  description = "Public route table IDs"
  value       = aws_route_table.public.*.id
}

output "private_route_table_ids" {
  description = "Private route table IDs"
  value       = aws_route_table.private.*.id
}

output "nat_ids" {
  description = "NAT gateway EIP IDs"
  value       = aws_eip.nat.*.id
}

output "nat_public_ips" {
  description = "NAT gateway EIPs"
  value       = aws_eip.nat.*.public_ip
}

output "nat_gateway_ids" {
  description = "NAT gateway IDs"
  value       = aws_nat_gateway.this.*.id
}



