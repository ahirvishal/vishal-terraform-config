variable "aggregator_name" {
  description = "Name of Config Aggregator"
  default = "organization-aggregator"
}

data "aws_organizations_organization" "example" {}

# Get current region of Terraform stack
data "aws_region" "current" {}

# Retrieves the partition that it resides in
data "aws_partition" "current" {}

variable "config_role_name" {
}

#Use this local variable while using account_aggregation_source option
# locals {
#   account_ids = data.aws_organizations_organization.example.accounts[*].id
# }
