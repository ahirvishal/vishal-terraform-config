# -----------------------------------------------------------
# set up the Config Aggregator
# -----------------------------------------------------------
resource "aws_config_configuration_aggregator" "organization" {
  name = var.aggregator_name

  account_aggregation_source {
    account_ids = ["401167881366"]
    regions     = ["us-east-1"]
  }  
#   organization_aggregation_source {
#     all_regions = true
#     role_arn    = "arn:${data.aws_partition.current.partition}:iam::${data.aws_caller_identity.current.account_id}:role/${var.config_role_name}"
#   }
}
