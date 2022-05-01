##########################################################################
### VPC
##########################################################################
output "vpc_id" {
  description = "The unique identifier for the VPC"
  value       = try(module.vpc[0].this.vpc_id, "")
}

output "vpc_urn" {
  description = "The uniform resource name (URN) for the VPC"
  value       = try(module.vpc[0].this.vpc_urn, "")
}

output "vpc_default" {
  description = "A boolean indicating whether or not the VPC is the default one for the region"
  value       = try(module.vpc[0].this.vpc_default, "")
}

##########################################################################
### DOMAIN
##########################################################################
output "domain_id" {
  description = "The name of the domain"
  value       = try(module.domain.this[0].domain_id, "")
}

output "domain_urn" {
  description = "The uniform resource name of the domain"
  value       = try(module.domain.this[0].domain_urn, "")
}

output "domain_ttl" {
  description = "The TTL value of the domain"
  value       = try(module.domain.this[0].domain_ttl, "")
}

output "domain_records" {
  description = "domains records"
  value       = try(module.domain.this.domain_records, "")
}
