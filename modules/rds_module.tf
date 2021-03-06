
##############
# DB instance
##############
resource "aws_db_instance" "default" {
  identifier                  = "${var.identifier}"
  name                        = "${var.database_name}"
  username                    = "${var.database_user}"
  password                    = "${var.database_password}"
  port                        = "${var.database_port}"
  engine                      = "${var.engine}"
  engine_version              = "${var.engine_version}"
  instance_class              = "${var.instance_class}"
  allocated_storage           = "${var.allocated_storage}"
  storage_encrypted           = "${var.storage_encrypted}"
  vpc_security_group_ids      = "${var.security_group_ids}"
  db_subnet_group_name        = "${var.db_subnet_group.name}"
  parameter_group_name        = "${var.parameter_group_name}"
  multi_az                    = "${var.multi_az}"
  storage_type                = "${var.storage_type}"
  iops                        = "${var.iops}"
  publicly_accessible         = "${var.publicly_accessible}"
  snapshot_identifier         = "${var.snapshot_identifier}"
  allow_major_version_upgrade = "${var.allow_major_version_upgrade}"
  auto_minor_version_upgrade  = "${var.auto_minor_version_upgrade}"
  apply_immediately           = "${var.apply_immediately}"
  maintenance_window          = "${var.maintenance_window}"
  skip_final_snapshot         = "${var.skip_final_snapshot}"
  copy_tags_to_snapshot       = "${var.copy_tags_to_snapshot}"
  backup_retention_period     = "${var.backup_retention_period}"
  backup_window               = "${var.backup_window}"
  tags                        = "${var.tags}"
  final_snapshot_identifier   = "${var.final_snapshot_identifier}" 
}
