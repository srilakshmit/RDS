
variable "security_group_ids" {
description = "List of VPC security groups to associate."
  type = "string"
}

variable "database_name" {
  description = "The name of the database to create when the DB instance is created"
  type = "string"
}

variable "database_user" {
type = "string"
}

variable "database_password" {
type = "string"
}

variable "database_port" {
type = "string"
  }

variable "multi_az" {
  description = "Set to true if multi AZ deployment must be supported"
  default     = "false"
}

variable "storage_type" {
  description = "One of 'standard' (magnetic), 'gp2' (general purpose SSD), or 'io1' (provisioned IOPS SSD)."
  default     = "standard"
}

variable "storage_encrypted" {
  description = "(Optional) Specifies whether the DB instance is encrypted. The default is false if not specified."
  default     = "false"
}

variable "iops" {
  description = "The amount of provisioned IOPS. Setting this implies a storage_type of 'io1'. Default is 0 if rds storage type is not 'io1'"
  default     = "0"
}

variable "allocated_storage" {
  description = "The allocated storage in GBs"

  # Number, e.g. 10
}

variable "engine" {
  description = "Database engine type"
  type = "string"
  }

variable "engine_version" {
  description = "Database engine version, depends on engine type"
  type = "string"
}

variable "instance_class" {
  description = "Class of RDS instance"
  type = "string"
}

# This is for custom parameters to be passed to the DB
# We're "cloning" default ones, but we need to specify which should be copied
variable "parameter_group_name" {
  description = "Parameter group, depends on DB engine used"

  # "mysql5.6"
  # "postgres9.5"
}

variable "publicly_accessible" {
  description = "Determines if database can be publicly available (NOT recommended)"
  default     = "true"
}

variable "db_subnet_group_name" {
  description = "List of subnets for the DB"
  type        = "string"
}

#variable "vpc_id" {
 # type = "string"
#}

variable "auto_minor_version_upgrade" {
  description = "Allow automated minor version upgrade"
  default     = "true"
}

variable "allow_major_version_upgrade" {
  description = "Allow major version upgrade"
  default     = "false"
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  default     = "false"
}

variable "maintenance_window" {
  description = "The window to perform maintenance in. Syntax: 'ddd:hh24:mi-ddd:hh24:mi' UTC "
  default     = "Mon:03:00-Mon:04:00"
}

variable "skip_final_snapshot" {
  description = "If true (default), no snapshot will be made before deleting DB"
  default     = "true"
}

variable "copy_tags_to_snapshot" {
  description = "Copy tags from DB to a snapshot"
  default     = "true"
}

variable "backup_retention_period" {
  description = "Backup retention period in days. Must be > 0 to enable backups"
  default     = 0
}

variable "backup_window" {
  description = "When AWS can perform DB snapshots, can't overlap with maintenance window"
  default     = "22:00-03:00"
}

variable "snapshot_identifier" {
  description = "Snapshot name e.g: rds:production-2015-06-26-06-05"
  default     = ""
}

variable "final_snapshot_identifier" {
  description = "Identifier e.g.: some-db-final-snapshot-2015-06-26-06-05"
  type        = "string"
  default     = ""
}

