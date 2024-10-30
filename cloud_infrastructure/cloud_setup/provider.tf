terraform {
  backend "s3" {}
  required_version = "= 1.6.6"
  required_providers {
    null = {
      source = "hashicorp/null"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "= 5.32.1"
    }
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      "Repository"  = "oidc-setup-for-aws-deployments"
      "managed-by"  = "terraform"
      "aws-region"  = var.aws_region
    }
  }
}