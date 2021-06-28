provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      createdby = "Terraform"
      module    = "teraform-aws-cloudhsm"
    }
  }
}
