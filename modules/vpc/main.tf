resource "digitalocean_vpc" "this" {
  name        = var.vpc_name
  region      = var.region
  description = var.vpc_description
  ip_range    = var.vpc_ip_range
}
