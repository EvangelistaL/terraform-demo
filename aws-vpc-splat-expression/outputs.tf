output "subnet_ids" {
  description = "Subnet ID's that was created"
  value       = aws_subnet.subnet[*].id
}
