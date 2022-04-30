module "vpc" {
  source = "./modules/vpc"

  count = var.create_vpc ? 1 : 0

  vpc_name        = var.vpc_name
  region          = var.region
  vpc_description = var.vpc_description
  vpc_ip_range    = var.vpc_ip_range
}
