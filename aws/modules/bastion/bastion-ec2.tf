# Bastion Host EC2 Instance
resource "aws_instance" "bastion" {
  ami                    = var.ami
  availability_zone      = var.availability_zone
  subnet_id              = var.subnet_id
  instance_type          = var.instance_type
  key_name               = var.keypair_name
  vpc_security_group_ids = [
    aws_security_group.bastion.id,
    var.default_security_group_id,
  ]

  associate_public_ip_address = true

  tags = merge(var.tags, map("Name", format("%s-bastion", var.name)))
}
