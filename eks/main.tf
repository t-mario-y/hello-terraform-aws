# AWS EKS demo
provider "aws" {
  profile = "default"
  region  = "ap-northeast-1"
}

# Cluster Name Variable
variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
