resource "aws_db_subnet_group" "database" {
  count = length(var.database_subnets) > 0 ? 1 : 0

  name = var.name
  description = "Database subnet group for ${var.name}"
  subnet_ids = aws_subnet.database.*.id

  tags = merge(var.tags, map("Name", format("%s", var.name)))
}