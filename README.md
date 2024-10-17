# Terraform S3 Module

This module creates an S3 bucket with optional versioning, logging, and bucket policies.

## Usage

```hcl
module "s3_bucket" {
  source = "./terraform-s3-module"

  bucket_name           = "my-s3-bucket"
  acl                   = "private"
  versioning            = true
  logging_target_bucket = "log-bucket"
  logging_target_prefix = "log/"
  bucket_policy         = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "s3:*",
      "Effect": "Deny",
      "Principal": "*",
      "Resource": "arn:aws:s3:::my-s3-bucket",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      }
    }
  ]
}