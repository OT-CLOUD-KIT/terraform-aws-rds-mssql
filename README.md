AWS RDS MSSql Module
====================

Terraform module which creates RDS MSSql Database Instance

Terraform Version
=================

Terraform v1.1.4



Usage
=====

```hcl

module "MSSql" {
  source = "./mssql"
  database_security_groups = var.database_security_groups
  database_subnet_ids      = var.database_subnet_ids
  engine_name              = var.engine_name
  identifier_prefix_name   = var.identifier_prefix_name
  db_name                  = var.db_name
  username                 = var.username
  password                 = var.password
  delete_automated_backups = var.delete_automated_backups
  skip_final_snapshot      = var.skip_final_snapshot
  multi_az                 = var.multi_az
  public_access            = var.public_access
  instance_class           = var.instance_class
  allocated_storage        = var.allocated_storage
  primary_subnet_name      = var.primary_subnet_name
  tags                     = var.tags
}

```
Inputs
------
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| engine_name | Name of database engine which is predefined by AWS | `string` | `"sqlserver-ex"` | yes |
| identifier_prefix_name | Database identifier in RDS  | `string` | `"mssql-server"` | no |
| db_name | Name of the database | `string` | `null` | no |
| username | Database user | `string` | `"admin"` | yes |
| password | Database Password | `string` | `"Opstree#12345"` | yes |
| multi_az | Enable or disbale Multi AZ | `boolean` | `"false"` | no |
| instance_class | Instance type from an AWS predefined list | `string` | `"db.t3.small"` | yes |
