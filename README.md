# MSSQL

[![Opstree Solutions][opstree_avatar]][opstree_homepage]<br/>[Opstree Solutions][opstree_homepage] 

  [opstree_homepage]: https://opstree.github.io/
  [opstree_avatar]: https://img.cloudposse.com/150x150/https://github.com/opstree.png

- This terraform module will create a MSSQL Instance, Subnet group and complete database setup.
- This projecct is a part of opstree's ot-aws initiative for terraform modules.

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

 
## Related Projects

Check out these related projects.

- [network_skeleton](https://gitlab.com/ot-aws/terrafrom_v0.12.21/network_skeleton) - Terraform module for providing a general purpose Networking solution
- [security_group](https://gitlab.com/ot-aws/terrafrom_v0.12.21/security_group) - Terraform module for creating dynamic Security groups
- [eks](https://gitlab.com/ot-aws/terrafrom_v0.12.21/eks) - Terraform module for creating elastic kubernetes cluster.
- [rds](https://gitlab.com/ot-aws/terrafrom_v0.12.21/rds) - Terraform module for creating Relation Datbase service.
- [HA_ec2](https://gitlab.com/ot-aws/terrafrom_v0.12.21/ha_ec2.git) - Terraform module for creating a Highly available setup of an EC2 instance with quick disater recovery.
- [rolling_deployment](https://gitlab.com/ot-aws/terrafrom_v0.12.21/rolling_deployment.git) - This terraform module will orchestrate rolling deployment.

Output
------
| Name | Description |
|------|-------------|
| rds_address | DB instance address to create endpoint |

### Contributor

|  [![Rishabh Sharma][rishabh_avatar]][rishabh_homepage]<br/>[Rishabh Sharma][rishabh_homepage] |  [![Aareeb Ali][areeb_avatar]][areeb_homepage]<br/>[Areeb Ali][areeb_homepage] |
|---|---|

  [rishabh_homepage]: https://gitlab.com/rishabh.sharma7
  [rishabh_avatar]: https://gitlab.com/uploads/-/system/user/avatar/9890362/avatar.png?width=400
  [areeb_homepage]: https://gitlab.com/areebali
  [areeb_avatar]: https://gitlab.com/uploads/-/system/user/avatar/10481017/avatar.png?width=400
