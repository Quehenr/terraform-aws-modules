variable "name" {
  description = "Resource name prefix"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "MySQL에 port 접속을 허용할 CIDR blocks"
  type        = list(string)
}

variable "db_port" {
  description = "MySQL db port"
  type        = number
  default     = 5432
}

variable "db_version" {
  description = "MySQL engine version"
  type        = string
}

variable "db_parameter_group_family" {
  description = "MySQL parameter group family version"
  type        = string
}

variable "identifier" {
  description = "MySQL RDS identifier"
  type        = string
}

variable "storage" {
  description = "MySQL storage 용량"
  default     = 20
  type        = number
}

variable "instance_type" {
  description = "MySQL RDS instance type"
  default     = "db.t2.micro"
  type        = string
}

variable "username" {
  description = "MySQL username"
  type        = string
}

variable "password" {
  description = "MySQL password"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the RDS instance"
  type        = string
}

variable "db_subnet_group_name" {
  description = "MySQL subnet group name"
}

variable "default_security_group_id" {
  description = "VPC default security group id for MySQL"
  type        = string
}

variable "tags" {
  description = "Tag map"
  type        = map(any)
}
