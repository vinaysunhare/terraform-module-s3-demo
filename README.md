# Vinay Sunhare Terraform S3 Module

This is a demo project by Vinay Sunhare that creates an S3 bucket with optional features like versioning, logging, and bucket policies. This module serves as a simple introduction to AWS and Terraform, designed for beginners who want to explore and learn how to implement infrastructure as code using these technologies.

Vinay is exploring AWS and Terraform, and this module is part of his journey to gain knowledge and hands-on experience. If you're new to Terraform and AWS, feel free to use this module, follow along with Vinay's work, and grow your skills in cloud infrastructure!

## Features

- Creates an S3 bucket with optional versioning for backup and data protection.
- Configures logging to track access and activities in the bucket.
- Adds bucket policies to secure and control access.

## Usage

```hcl
module "s3_bucket" {
  source = "./terraform-s3-module"

  bucket_name           = "vinaysunhare-s3-bucket"
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
EOF
}
```

## Getting Started

1. **Install Terraform**: Make sure you have Terraform installed. You can download it from the official [Terraform website](https://www.terraform.io/).
2. **Set Up AWS Credentials**: Ensure your AWS credentials are configured locally (through AWS CLI or environment variables) to allow Terraform to interact with your AWS account.
3. **Clone or Use the Module**: Copy this module into your project or download it from Vinay's repository.
4. **Customize Inputs**: Modify the `bucket_name`, `versioning`, `logging_target_bucket`, and other variables to fit your needs.
5. **Apply the Configuration**: Run the following commands to initialize and apply your configuration:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

## Key Inputs

- `bucket_name`: The name of the S3 bucket to be created.
- `acl`: The access control list for the bucket (e.g., "private").
- `versioning`: Enable versioning for backup and data recovery (`true` or `false`).
- `logging_target_bucket`: The S3 bucket to send access logs to.
- `logging_target_prefix`: A prefix for the log files.
- `bucket_policy`: A custom bucket policy in JSON format for advanced access control.

## Outputs

- `bucket_arn`: The ARN of the created S3 bucket.
- `bucket_id`: The ID (name) of the created S3 bucket.
- `bucket_domain_name`: The domain name of the S3 bucket.

## About Vinay

Vinay Sunhare is currently exploring AWS and Terraform as part of his journey to master cloud technologies and infrastructure as code (IaC). This demo project is part of his learning process, and he's excited to share it with others who are also beginning their journey in AWS and Terraform. By using this module, you can follow Vinay's progress and grow your knowledge alongside him!

Happy learning!