resource "aws_route_table" "database" {
  count = length(var.availability_zones)

  vpc_id = aws_vpc.this.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.this.*.id[count.index]
  }

  tags = merge(var.tags, map("Name", format("%s-database-%s", var.name, var.availability_zones[count.index])))
}

resource "aws_route_table_association" "database" {
  count = length(var.database_subnets)

  subnet_id = aws_subnet.database.*.id[count.index]
  route_table_id = aws_route_table.database.*.id[count.index]
}