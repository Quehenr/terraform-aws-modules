variable "name" {
  description = "Resource name prefix"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "Postgress에 port 접속을 허용할 CIDR blocks"
  type        = list(string)
}

variable "db_port" {
  description = "Postgresql db port"
  type        = number
  default     = 5432
}

variable "tags" {
  description = "Tag map"
  type        = map(any)
}
