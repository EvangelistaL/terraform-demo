output "ec2_ip" {
  description = "EC2 ip that was created"
  value       = aws_instance.ec2.public_ip
}