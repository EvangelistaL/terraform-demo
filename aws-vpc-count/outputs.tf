output "subnet_id_0" {
  description = "Subnet ID that was created"
  value       = aws_subnet.subnet[0].id
}

output "subnet_id_1" {
  description = "Subnet ID that was created"
  value       = aws_subnet.subnet[1].id
}

output "subnet_id_2" {
  description = "Subnet ID that was created"
  value       = aws_subnet.subnet[2].id
}
