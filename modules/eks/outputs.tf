output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.cluster.name
}

output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = aws_eks_cluster.cluster.endpoint
}

output "eks_cluster_certificate_authority_data" {
  description = "EKS cluster certificate authority data"
  value       = aws_eks_cluster.cluster.certificate_authority[0].data
}

output "admin_irsa_role_arn" {
  description = "IAM role ARN for the admin ServiceAccount IRSA"
  value       = aws_iam_role.admin_service_account.arn
}

output "admin_irsa_role_name" {
  description = "IAM role name for the admin ServiceAccount IRSA"
  value       = aws_iam_role.admin_service_account.name
}

output "oidc_provider_url" {
  description = "OIDC provider URL for the EKS cluster"
  value       = aws_iam_openid_connect_provider.oidc.url
}
