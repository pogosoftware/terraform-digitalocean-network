output "domain_id" {
  description = "The name of the domain"
  value       = try(digitalocean_domain.this[0].id, "")
}

output "domain_urn" {
  description = "The uniform resource name of the domain"
  value       = try(digitalocean_domain.this[0].urn, "")
}

output "domain_ttl" {
  description = "The TTL value of the domain"
  value       = try(digitalocean_domain.this[0].ttl, "")
}

output "domain_records" {
  description = "domains records"
  value       = try(local.domain_records, "")
}
