resource "aws_db_instance" "this" {
  identifier          = var.identifier
  allocated_storage   = var.storage
  engine              = "mysql"
  engine_version      = var.db_version
  instance_class      = var.instance_type
  name                = var.name
  username            = var.username
  password            = var.password
  skip_final_snapshot = true # 인스턴스 제거 시 최종 스냅샷을 만들지 여부

  availability_zone = var.availability_zone
  db_subnet_group_name = var.db_subnet_group_name
  vpc_security_group_ids = [
    aws_security_group.mysql.id,
    var.default_security_group_id,
  ]

  parameter_group_name = aws_db_parameter_group.this.name

  tags = merge(var.tags, map("Name", format("%s-mysql", var.name)))
}
