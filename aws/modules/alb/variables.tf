variable "name" {
  description = "Resource name prefix"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "is_internal" {
  description = "Internal loadbalancer"
  type        = bool
}

variable "public_subnets" {
  description = "Public subnet IPs"
  type        = list(string)
}

variable "tags" {
  description = "Tag map"
  type        = map(any)
}
