resource "aws_cloudhsm_v2_hsm" "hsm" {
  subnet_id  = tolist(aws_cloudhsm_v2_cluster.cluster.subnet_ids)[0]
  cluster_id = aws_cloudhsm_v2_cluster.cluster.cluster_id
}
