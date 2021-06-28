

resource "aws_cloudhsm_v2_cluster" "cloudhsm_v2_cluster" {
  hsm_type   = var.hsm_type
  subnet_ids = var.subnets.*.id
}
