resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = merge(var.tags, map("Name", format("%s", var.name)))
}
