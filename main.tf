module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  prefix              = var.prefix
  tags = {
    Environment = var.environment
    Terraform   = "true"
  }
}

module "eks" {
  source                         = "./modules/eks"
  cluster_name                   = var.cluster_name
  vpc_id                         = module.vpc.vpc_id
  private_subnet_ids             = module.vpc.private_subnet_ids
  node_instance_type             = var.node_instance_type
  desired_capacity               = var.desired_capacity
  min_capacity                   = var.min_capacity
  max_capacity                   = var.max_capacity
  admin_service_account_name     = var.admin_service_account_name
  admin_service_account_namespace = var.admin_service_account_namespace
  tags = {
    Environment = var.environment
    Terraform   = "true"
  }
}

module "s3_cloudfront" {
  source             = "./modules/s3_cloudfront"
  bucket_name        = var.bucket_name
  index_html_content = var.index_html_content
  admin_role_name    = module.eks.admin_irsa_role_name
  tags = {
    Environment = var.environment
    Terraform   = "true"
  }
}
