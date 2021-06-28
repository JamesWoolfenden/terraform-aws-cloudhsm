variable "subnets" {
  type = list(any)
}

variable "hsm_type" {
  type    = string
  default = "hsm1.medium"
}