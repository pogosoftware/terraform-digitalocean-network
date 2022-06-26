###################################################################################################
### VPC
###################################################################################################
resource "digitalocean_vpc" "main" {
  count = var.create_vpc ? 1 : 0

  name        = var.vpc_name
  region      = var.vpc_region
  description = var.vpc_description
  ip_range    = var.vpc_ip_range
}

###################################################################################################
### DOMAIN
###################################################################################################
resource "digitalocean_domain" "main" {
  count = var.create_domain ? 1 : 0

  name       = var.domain_name
  ip_address = var.domain_ip_address
}

resource "digitalocean_record" "main" {
  for_each = local.domain_records

  domain = digitalocean_domain.main[0].id
  type   = each.value.type
  name   = each.key
  value  = each.value.value

  port     = lookup(each.value, "port", null)
  priority = lookup(each.value, "priority", null)
  weight   = lookup(each.value, "weight", null)
  ttl      = lookup(each.value, "ttl", null)
  flags    = lookup(each.value, "flags", null)
  tag      = lookup(each.value, "tags", null)
}
