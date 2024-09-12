output "bucket_id" {
  description = "Bucket ID that was created"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "Bucket arn that was created"
  value       = aws_s3_bucket.bucket.arn
}