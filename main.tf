provider "aws" {
  region     = var.region[tonumber(var.selector) - 1]
  access_key = var.awsAccessKey
  secret_key = var.awsSecretKey
}

module "configs" {
  source = "./modules/configs"


}

module "aggregator" {
  source = "./modules/aggregator"

  config_role_name = module.iam.config_role_name
}

module "iam" {
  source = "./modules/iam"


}