data "aws_caller_identity" "current" {}

variable "account_id" {
  description = "AWS account id"
}

variable "aws_region" {
  description = "AWS region"
}