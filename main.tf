provider "aws" {
  region     = var.region[tonumber(var.selector) - 1]
  access_key = var.awsAccessKey
  secret_key = var.awsSecretKey
}

module "configs" {
  source = "./modules/configs"


}

module "configs" {
  source = "./modules/configs"


}

module "configs" {
  source = "./modules/iam"


}