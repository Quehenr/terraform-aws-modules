resource "aws_alb" "external" {
  name            = var.name
  description = "${var.name} external ALB"
  
  vpc_id = var.vpc_id
  internal        = var.is_internal
  security_groups = ["value"]
  subnets         = var.public_subnets

  lifecycle {
    create_before_destory = true
  }

  tags = merge(var.tags, map("Name", format("%s-external", var.name)))
}
