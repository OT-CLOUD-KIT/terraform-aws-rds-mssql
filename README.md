# ot-rds-mssql

#USE Module with the given parameters
```hcl

module "MSSql" {
  source = "../mssql"
  database_security_groups = var.database_security_groups
  database_subnet_ids      = var.database_subnet_ids
  engine_name              = var.engine_name
  identifier_prefix_name   = var.identifier_prefix_name
  password                 = var.password
  primary_subnet_name      = var.primary_subnet_name
  tags                     = var.tags
}

```
