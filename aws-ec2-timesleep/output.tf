output "ec2_1_ip" {
  description = "EC2 ip that was created"
  value       = aws_instance.ec2_1.public_ip
}

output "ec2_2_ip" {
  description = "EC2 ip that was created"
  value       = aws_instance.ec2_2.public_ip
}