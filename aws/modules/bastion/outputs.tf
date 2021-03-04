output "instance_id" {
  description = "Bastion EC2 ID"
  value       = aws_instance.bastion.id
}

output "bastion_sg_id" {
  description = "Security gateway ID to bastion"
  value       = aws_security_group.bastion.id
}

output "ssh_from_bastion_sg_id" {
  description = "Security gateway ID from bastion"
  value       = aws_security_group.ssh_from_bastion.id
}

output "eip_id" {
  description = "Bastion EIP ID"
  value       = aws_eip.bastion.id
}
