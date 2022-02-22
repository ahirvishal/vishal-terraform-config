# -----------------------------------------------------------
# set up the Config Aggregator
# -----------------------------------------------------------

# Get current account number
data "aws_caller_identity" "current" {}
# data "aws_organizations_organization" "example" {}

resource "aws_config_configuration_aggregator" "organization" {
  name = var.aggregator_name

#Uncomment this part while  using account_aggregation_source option 
  # account_aggregation_source {
  #   account_ids = local.account_ids
  #   regions     = ["us-east-1"]
  # }

#Uncommenct this part while using organization_aggregation_source option 
   organization_aggregation_source {
      all_regions = true
      role_arn    = "arn:${data.aws_partition.current.partition}:iam::${data.aws_caller_identity.current.account_id}:role/${var.config_role_name}"
  }
}
