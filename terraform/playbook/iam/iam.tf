variable "aws_access_key" {
  default = "AKIATTBUSM2QTQ2B2D4D"
}
variable "aws_secret_key" {
  default = "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"
}
provider "aws" {
  region  = "us-east-2"
  #shared_credentials_file = "${pathexpand("~/.aws/credentials")}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

module "sns" {
  source                              = ".//../../modules/iam"
}
