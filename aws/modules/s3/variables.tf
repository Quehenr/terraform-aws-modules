variable "name" {
  description = "Resource name prefix"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "tags" {
  description = "Tag map"
  type        = map(any)
}
