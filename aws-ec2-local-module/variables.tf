variable "aws_region" {
  type        = string
  description = "Region where the resource will be created"
  default     = "us-east-1"
}

variable "cidr_vpc" {
  description = "Custom cidr for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "cidr_subnet" {
  description = "Custom cidr for subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "development"
}