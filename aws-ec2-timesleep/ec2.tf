resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "ec2_1" {
  ami                         = "ami-0e86e20dae9224db8"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "terraform-ec2-1"
  }
}

# https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep.html
resource "time_sleep" "wait_30_seconds" {
  depends_on = [aws_instance.ec2_1]

  create_duration  = "30s"
  destroy_duration = "30s"
}

resource "aws_instance" "ec2_2" {
  depends_on = [time_sleep.wait_30_seconds]

  ami                         = "ami-0e86e20dae9224db8"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "terraform-ec2-2"
  }
}