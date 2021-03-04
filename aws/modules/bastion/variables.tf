variable "name" {
  description = "Resource name prefix"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ami" {
  description = "Bastion EC2 AMI"
  type        = string
}

variable "instance_type" {
  description = "Bastion EC2 instance type"
  default     = "t3.nano"
  type        = string
}

variable "availability_zone" {
  description = "Bastion EC2 availability zone"
  type        = string
}

variable "subnet_id" {
  description = "Bastion EC2 subnet ID"
  type        = string
}

variable "default_security_group_id" {
  description = "Default security group ID"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "Bastion에 ssh 접속을 허용할 CIDR blocks"
  type        = list(string)
}

variable "keypair_name" {
  description = "Bastion keypair name"
  type        = string
}

variable "tags" {
  description = "Tag map"
  type        = map(any)
}
