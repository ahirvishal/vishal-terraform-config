# Get current organization detail
data "aws_organizations_organization" "example" {}

# Get current account number
data "aws_caller_identity" "current" {}

# Get current region of Terraform stack
data "aws_region" "current" {}

# Retrieves the partition that it resides in
data "aws_partition" "current" {}
