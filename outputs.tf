output "athena_databases_id" {
  description = "Map of id values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "athena_databases_acl_configuration" {
  description = "Map of acl_configuration values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => one(v.acl_configuration) if v.acl_configuration != null && length(v.acl_configuration) > 0 }
}
output "athena_databases_bucket" {
  description = "Map of bucket values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "athena_databases_comment" {
  description = "Map of comment values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "athena_databases_encryption_configuration" {
  description = "Map of encryption_configuration values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => one(v.encryption_configuration) if v.encryption_configuration != null && length(v.encryption_configuration) > 0 }
}
output "athena_databases_expected_bucket_owner" {
  description = "Map of expected_bucket_owner values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => v.expected_bucket_owner if v.expected_bucket_owner != null && length(v.expected_bucket_owner) > 0 }
}
output "athena_databases_force_destroy" {
  description = "Map of force_destroy values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => v.force_destroy if v.force_destroy != null }
}
output "athena_databases_name" {
  description = "Map of name values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "athena_databases_properties" {
  description = "Map of properties values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "athena_databases_region" {
  description = "Map of region values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => v.region if v.region != null && length(v.region) > 0 }
}
output "athena_databases_workgroup" {
  description = "Map of workgroup values across all athena_databases, keyed the same as var.athena_databases"
  value       = { for k, v in aws_athena_database.athena_databases : k => v.workgroup if v.workgroup != null && length(v.workgroup) > 0 }
}

