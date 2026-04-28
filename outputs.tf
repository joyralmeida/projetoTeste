output "eks_cluster_name" {
  description = "The EKS cluster name"
  value       = module.eks.eks_cluster_name
}

output "eks_cluster_endpoint" {
  description = "The EKS cluster endpoint"
  value       = module.eks.eks_cluster_endpoint
}

output "eks_cluster_certificate_authority_data" {
  description = "Base64 encoded certificate authority data for the EKS cluster"
  value       = module.eks.eks_cluster_certificate_authority_data
}

output "admin_irsa_role_arn" {
  description = "IAM role ARN assigned to the Kubernetes ServiceAccount for S3 access"
  value       = module.eks.admin_irsa_role_arn
}

output "cloudfront_domain_name" {
  description = "CloudFront distribution domain name"
  value       = module.s3_cloudfront.cloudfront_domain_name
}

output "s3_bucket_name" {
  description = "Private S3 bucket name for static assets"
  value       = module.s3_cloudfront.s3_bucket_name
}
