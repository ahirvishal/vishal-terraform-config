variable "aggregator_name" {
  description = "Name of Config Aggregator"
  default = "organization-aggregator"
}
variable "account_ids" {
  type = list
  default = [""]
}