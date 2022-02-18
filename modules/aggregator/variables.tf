variable "aggregator_name" {
  description = "Name of Config Aggregator"
  default = "organization-aggregator"
}
data "aws_organizations_organization" "example" {}

locals {
  account_ids = data.aws_organizations_organization.example.accounts[*].id
}
