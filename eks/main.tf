# AWS EKS demo
provider "aws" {
  profile = var.aws_profile
  region  = "ap-northeast-1"
}

variable "aws_profile" {}

# Cluster Name Variable
variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
