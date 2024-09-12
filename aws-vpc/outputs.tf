output "subnet_id" {
  description = "Subnet ID that was created"
  value       = aws_subnet.subnet.id
}

output "security_group_id" {
  description = "Security group ID that was created"
  value       = aws_security_group.security_group.id
}