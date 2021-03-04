variable "name" {
  description = "Resource name prefix"
  type        = string
}

variable "availability_zones" {
  description = "사용할 Availability zones"
  type        = list(string)
}

variable "cidr_block" {
  description = "VPC에 할당할 CIDR block"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet IPs"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnet IPs"
  type        = list(string)
}

variable "database_subnets" {
  description = "Database subnet IPs"
  type        = list(string)
}

variable "tags" {
  description = "Tag map"
  type        = map(any)
}
