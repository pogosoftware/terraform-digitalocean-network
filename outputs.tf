##########################################################################
### VPC
##########################################################################
output "vpc_id" {
  description = "The unique identifier for the VPC"
  value       = try(digitalocean_vpc.main[0].id, "")
}

output "vpc_urn" {
  description = "The uniform resource name (URN) for the VPC"
  value       = try(digitalocean_vpc.main[0].urn, "")
}

output "vpc_default" {
  description = "A boolean indicating whether or not the VPC is the default one for the region"
  value       = try(digitalocean_vpc.main[0].default, "")
}

##########################################################################
### DOMAIN
##########################################################################
output "domain_id" {
  description = "The name of the domain"
  value       = try(digitalocean_domain.main[0].id, "")
}

output "domain_urn" {
  description = "The uniform resource name of the domain"
  value       = try(digitalocean_domain.main[0].urn, "")
}

output "domain_ttl" {
  description = "The TTL value of the domain"
  value       = try(digitalocean_domain.main[0].ttl, "")
}

output "domain_records_fqdn" {
  description = "The key value pair of domains records"
  value       = { for k, v in digitalocean_record.main : k => digitalocean_record.main[k].fqdn }
}
