resource "aws_subnet" "us_east" {
  vpc_id     = module.vpc.vpc_id_default
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "terraform-subnet-provider"
  }
}

resource "aws_subnet" "us_west" {
  provider   = aws.us_west
  vpc_id     = module.vpc.vpc_id_provider_1
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "terraform-subnet-provider"
  }
}

resource "aws_subnet" "australia" {
  provider   = aws.australia
  vpc_id     = module.vpc.vpc_id_provider_2
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "terraform-subnet-provider"
  }
}