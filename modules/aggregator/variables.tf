variable "aggregator_name" {
  description = "Name of Config Aggregator"
  default     = "organization-aggregator"
}

variable "config_role_name" {
}

#Use this local variable while using account_aggregation_source option
# locals {
#   account_ids = data.aws_organizations_organization.example.accounts[*].id
# }
