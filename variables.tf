variable "vinaysunhare_tfmodule_s3" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default     = {}
}