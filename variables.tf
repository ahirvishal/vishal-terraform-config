variable "awsAccessKey" {
  default = ""
}

variable "awsSecretKey" {
  default = ""
}

variable "region" {
  type    = list(any)
  default = ["us-east-1", "af-south-1", "ap-southeast-1"]
}

variable "selector" {
  description = "Select the region to create resources:-\n 1.us-east-1 \n 2.af-south-1 \n 3.ap-southeast-1"
}
