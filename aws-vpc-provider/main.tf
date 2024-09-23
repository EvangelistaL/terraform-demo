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
    key    = "aws-vpc-provider/terraform.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {
  alias  = "us_east"
  region = var.aws_region_us_east
  default_tags {
    tags = local.common_tags
  }
}

provider "aws" {
  alias  = "us_west"
  region = var.aws_region_us_west
  default_tags {
    tags = local.common_tags
  }
}

provider "aws" {
  alias  = "australia"
  region = var.aws_region_australia
  default_tags {
    tags = local.common_tags
  }
}

module "vpc" {
  providers = {
    aws.us_east    = aws.us_east
    aws.provider_1 = aws.us_west
    aws.provider_2 = aws.australia
  }
  source = "./vpc"
}