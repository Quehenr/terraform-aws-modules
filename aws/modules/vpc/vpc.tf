resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  # 기본 tag map에 Name tag를 추가
  tags = merge(var.tags, map("Name", format("%s", var.name)))
}