resource "aws_eip" "nat" {
  count = length(var.availability_zones)
  vpc   = true

  depends_on = [aws_internet_gateway.this]

  tags = merge(var.tags, map("Name", format("%s-nat-%s", var.name, var.availability_zones[count.index])))
}
