resource "aws_s3_bucket" "vinaysunhare" {
  bucket = var.vinaysunhare_tfmodule_s3

  tags = var.tags
}

resource "aws_s3_bucket_versioning" "vinaysunhare" {
  bucket = aws_s3_bucket.vinaysunhare.id

  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}