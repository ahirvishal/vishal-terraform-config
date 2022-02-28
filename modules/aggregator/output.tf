output "config_aggregator_arn" {
  value       = aws_config_configuration_aggregator.organization.arn
  description = "AWS Config Aggregator ARN"
}

output "account_ids" {
  value       = data.aws_organizations_organization.example.accounts[*].id
  description = "Account ids of all accounts under the main organization account"
}
