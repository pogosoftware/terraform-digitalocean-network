locals {
  domain_id      = var.create_domain ? digitalocean_domain.this[0].id : data.digitalocean_domain.this[0].id
  domain_records = { for key, value in var.domain_records : key => digitalocean_record.this[key].fqdn }
}
