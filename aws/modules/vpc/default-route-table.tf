resource "aws_default_route_table" "default" {
  default_route_table_id = aws_vpc.this.default_route_table_id

  tags = merge(var.tags, map("Name", format("%s-default", var.name)))
}