resource "aws_network_acl" "database" {
  vpc_id     = aws_vpc.this.id
  subnet_ids = aws_subnet.database.*.id

  tags = merge(var.tags, map("Name", format("%s-database", var.name)))
}

resource "aws_network_acl_rule" "database_ingress_vpc" {
  network_acl_id = aws_network_acl.database.id
  rule_number    = 100
  rule_action    = "allow"
  egress         = false
  protocol       = -1
  cidr_block     = aws_vpc.this.cidr_block
  from_port      = 0
  to_port        = 0
}

resource "aws_network_acl_rule" "database_egress_vpc" {
  network_acl_id = aws_network_acl.database.id
  rule_number    = 100
  rule_action    = "allow"
  egress         = true
  protocol       = -1
  cidr_block     = aws_vpc.this.cidr_block
  from_port      = 0
  to_port        = 0
}

resource "aws_network_acl_rule" "database_ingress_nat" {
  network_acl_id = aws_network_acl.database.id
  rule_number    = 110
  rule_action    = "allow"
  egress         = false
  protocol       = "tcp"
  cidr_block     = "0.0.0.0/0"
  from_port      = 1024
  to_port        = 65535
}
