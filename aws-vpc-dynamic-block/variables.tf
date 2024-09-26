variable "aws_region" {
  type        = string
  description = "Region where the resource will be created"
  default     = "us-east-1"
}

variable "ports" {
  type = map(object({
    description = string
    cidr_blocks = list(string)
  }))
  default = {
    22 = {
      description = "Port 22 to VPN"
      cidr_blocks = ["20.15.101.158/32"]
    }
    80 = {
      description = "Port 80 to internet"
      cidr_blocks = ["0.0.0.0/0"]
    }
    443 = {
      description = "Port 443 to internet"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}