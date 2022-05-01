##########################################################################
### VPC
##########################################################################
output "vpc_id" {
  description = "The unique identifier for the VPC"
  value       = try(module.vpc[0].this.id, "")
}

output "vpc_urn" {
  description = "The uniform resource name (URN) for the VPC"
  value       = try(module.vpc[0].this.urn, "")
}

output "vpc_default" {
  description = "A boolean indicating whether or not the VPC is the default one for the region"
  value       = try(module.vpc[0].this.default, "")
}

##########################################################################
### DOMAIN
##########################################################################
output "domain_id" {
  description = "The name of the domain"
  value       = try(module.domain.this[0].id, "")
}

output "domain_urn" {
  description = "The uniform resource name of the domain"
  value       = try(module.domain.this[0].urn, "")
}

output "domain_ttl" {
  description = "The TTL value of the domain"
  value       = try(module.domain.this[0].ttl, "")
}

output "domain_records" {
  description = "domains records"
  value       = try(module.domain.this.domain_records, "")
}
