variable "vinaysunhare_tfmodule_s3" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "logging_target_prefix" {
  description = "The log file prefix for logs"
  type        = string
  default     = null
}

variable "bucket_policy" {
  description = "The bucket policy as a JSON document"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default     = {}
}