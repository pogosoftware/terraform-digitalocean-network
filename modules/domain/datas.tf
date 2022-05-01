data "digitalocean_domain" "this" {
  count = !var.create_domain ? 1 : 0
  name  = var.domain_name
}
