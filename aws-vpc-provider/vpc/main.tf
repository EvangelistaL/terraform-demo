terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
      configuration_aliases = [aws.us_east, aws.provider_1, aws.provider_2]
    }
  }
}
