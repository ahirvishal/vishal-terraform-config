output "account_ids" {
  value       = module.aggregator.account_ids
  description = "Account ids of all accounts under the main organization account"
}

output "config_aggregator_arn" {
  description = "AWS Config Aggregator ARN"
  value       = module.aggregator.config_aggregator_arn
}

output "config_role_name" {
  description = "The name of Configrole which will be used by config service"
  value = module.iam.config_role_name
}
