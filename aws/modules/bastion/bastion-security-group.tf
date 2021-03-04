# Security group for ssh connection to bastion
resource "aws_security_group" "bastion" {
  name        = "bastion"
  description = "Security group for bastion instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ingress_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.tags, map("Name", format("%s-bastion", var.name)))
}

# Security group for ssh connection to private subnet from bastion
resource "aws_security_group" "ssh_from_bastion" {
  name        = "ssh_from_bastion"
  description = "Allow SSH connction from bastion"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.bastion.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.tags, map("Name", format("%s-ssh-from-bastion", var.name)))
}
