variable "external_account_id" {}


provider "aws" {
region = "us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::${var.external_account_id}:role/AssumeIAMRole"
  }
}


module "iam_roles_account_1" {
  source = "./aviatrix-controller-iam-roles"
  external-controller-account-id = "5085657xxxx"  # This is account number where AVTX Controller is installed
}

