resource "digitalocean_domain" "this" {
  count = var.create_domain ? 1 : 0

  name       = var.domain_name
  ip_address = var.domain_ip_address
}

resource "digitalocean_record" "this" {
  for_each = var.domain_records

  domain = local.domain_id
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
