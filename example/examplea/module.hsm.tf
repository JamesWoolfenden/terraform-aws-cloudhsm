module "hsm" {
  source      = "../../"
  subnets     = aws_subnet.cloudhsm_v2_subnets
}
