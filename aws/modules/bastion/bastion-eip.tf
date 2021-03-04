# Bastion Host EIP
resource "aws_eip" "bastion" {
  vpc      = true
  instance = aws_instance.bastion.id

  tags = merge(var.tags, map("Name", format("%s-bastion", var.name)))
}
