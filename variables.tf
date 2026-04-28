variable "aws_region" {
  description = "AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "prefix" {
  description = "Resource name prefix"
  type        = string
  default     = "demo"
}

variable "bucket_name" {
  description = "Name of the S3 bucket for static assets"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS node group"
  type        = string
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "min_capacity" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "max_capacity" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "index_html_content" {
  description = "Initial index.html content for the S3 bucket"
  type        = string
  default     = "<html><body><h1>Static Asset CDN</h1><p>Deployed by Terraform.</p></body></html>"
}

variable "admin_service_account_name" {
  description = "Kubernetes ServiceAccount name for admin panel IRSA"
  type        = string
  default     = "admin-panel-sa"
}

variable "admin_service_account_namespace" {
  description = "Kubernetes namespace for admin ServiceAccount"
  type        = string
  default     = "admin"
}
