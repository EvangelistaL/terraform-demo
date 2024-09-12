resource "aws_s3_bucket" "bucket" {
  bucket = "hknl-remote-state-bucket"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# bucket versioning ref.: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning