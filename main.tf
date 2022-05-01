module "vpc" {
  source = "./modules/vpc"

  count = var.create_vpc ? 1 : 0

  vpc_name        = var.vpc_name
  region          = var.region
  vpc_description = var.vpc_description
  vpc_ip_range    = var.vpc_ip_range
}

module "domain" {
  source = "./modules/domain"

  create_domain = var.create_domain

  domain_name       = var.domain_name
  domain_ip_address = var.domain_ip_address
  domain_records    = var.domain_records
}
