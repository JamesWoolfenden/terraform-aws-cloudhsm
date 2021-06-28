
data "aws_availability_zones" "available" {}

resource "aws_vpc" "cloudhsm_v2_vpc" {
  # checkov:skip=CKV2_AWS_11: ADD REASON
  # checkov:skip=CKV2_AWS_1: ADD REASON
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "cloudhsm_v2_subnets" {
  count                   = 2
  vpc_id                  = aws_vpc.cloudhsm_v2_vpc.id
  cidr_block              = element(var.subnet_cidrs, count.index)
  map_public_ip_on_launch = false
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
}

resource "aws_default_security_group" "cloudhsm_v2_vpc" {
  vpc_id = aws_vpc.cloudhsm_v2_vpc.id
}
