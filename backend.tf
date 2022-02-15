terraform {
  backend "s3" {
    key            = "vishalahir.tfstate"
    bucket         = "ahir-test-bucket"
    region         = "us-east-1"
    dynamodb_table = "vishal_test"
    access_key     = ""
    secret_key     = ""
  }
}