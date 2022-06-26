##########################################################################
### VPC
##########################################################################
variable "create_vpc" {
  default     = false
  description = "Dterminates to create vpc resources or not"
  type        = bool
}

variable "vpc_region" {
  default     = null
  description = "The DigitalOcean region slug for the VPC's location"
  type        = string
}

variable "vpc_name" {
  default     = null
  description = "Required if `create_vpc` is set to `true`. A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only"
  type        = string
}

variable "vpc_description" {
  default     = null
  description = "A free-form text field up to a limit of 255 characters to describe the VPC"
  type        = string
}

variable "vpc_ip_range" {
  default     = null
  description = "The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than `/16` or smaller than `/24`"
  type        = string
}

##########################################################################
### DOMAIN
##########################################################################
variable "create_domain" {
  default     = false
  description = "Determinates to create domain resources or not"
  type        = bool
}

variable "domain_name" {
  default     = null
  description = "Required if `create_domain` is set to `true`. The name of the domain"
  type        = string
}

variable "domain_ip_address" {
  default     = null
  description = "The IP address of the domain. If specified, this IP is used to created an initial A record for the domain"
  type        = string
}

variable "domain_records" {
  default     = []
  description = "Map of the DNS domain records"
  type = list(object({
    name     = string
    type     = string
    value    = string
    port     = optional(number)
    priority = optional(number)
    weight   = optional(number)
    ttl      = optional(number)
    flags    = optional(number)
    tag      = optional(string)
  }))
}
