variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "index_html_content" {
  description = "Initial HTML content to populate the bucket"
  type        = string
}

variable "admin_role_name" {
  description = "IAM role name for the admin ServiceAccount IRSA"
  type        = string
}

variable "tags" {
  description = "Tags to apply to bucket and CDN resources"
  type        = map(string)
  default     = {}
}
