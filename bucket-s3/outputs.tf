output "s3_bucket_id" {
  description = "S3 bucket id that was created"
  value       = aws_s3_bucket.bucket.id
}

output "s3_bucket_host_zone_id" {
  description = "S3 bucket host zone id that was created"
  value       = aws_s3_bucket.bucket.hosted_zone_id #-> attribute reference example
}

# ref.: https://developer.hashicorp.com/terraform/language/values/outputs