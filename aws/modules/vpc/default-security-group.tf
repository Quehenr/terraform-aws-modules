resource "aws_default_security_group" "this" {
  vpc_id = aws_vpc.this.id

  ingress {
		from_port = 0
		to_port = 0
    protocol = -1
    self = true
	}

	egress {
		from_port = 0
		to_port = 0
		protocol = -1
		cidr_blocks = ["0.0.0.0/0"]
	}

  tags = merge(var.tags, map("Name", format("%s-default", var.name)))
}