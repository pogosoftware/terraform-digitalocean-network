locals {
  domain_records = var.create_domain ? { for record in var.domain_records : record.name => record } : {}
}
