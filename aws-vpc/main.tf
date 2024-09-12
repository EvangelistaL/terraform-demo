# backend ref.: https://developer.hashicorp.com/terraform/language/backend/s3

terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "hknl-remote-state-bucket"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = local.common_tags
  }
}