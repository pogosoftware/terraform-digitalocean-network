output "domain_id" {
  description = "The name of the domain"
  value       = module.domain.domain_id
}

output "domain_urn" {
  description = "The uniform resource name of the domain"
  value       = module.domain.domain_urn
}

output "domain_ttl" {
  description = "The TTL value of the domain"
  value       = module.domain.domain_ttl
}

output "domain_records" {
  description = "The key value pair of domains records"
  value       = module.domain.domain_records_fqdn
}
