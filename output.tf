output "rds_address" {
  value = aws_db_instance.myRDS.address
}

output "rds_instance_id" {
  value=aws_db_instance.myRDS.id
}