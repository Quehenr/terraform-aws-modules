resource "aws_db_parameter_group" "this" {
  name = "${var.identifier}-parameter-group"
  description = "${var.identifier} parameter group for MySQL ${var.db_version}"
  family = var.db_parameter_group_family

  parameter {
    name  = "character_set_server"
    value = "utf8mb4"
  }
  parameter {
    name  = "character_set_client"
    value = "utf8mb4"
  }
  parameter {
    name = "character_set_connection"
    value = "utf8mb4"
  }
  parameter {
    name = "character_set_database"
    value = "utf8mb4"
  }
  parameter {
    name = "character_set_filesystem"
    value = "utf8mb4"
  }
  parameter {
    name = "collation_connection"
    value = "utf8mb4_unicode_ci"
  }
  parameter {
    name = "collation_server"
    value = "utf8mb4_unicode_ci"
  }
  parameter {
    name = "autocommit"
    value = 0
  }
  parameter {
    name = "binlog_format"
    value = "row"
  }

  tags = merge(var.tags, map("Name", format("%s-mysql", var.name)))
}