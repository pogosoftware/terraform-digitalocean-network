variable "create_domain" {
  default     = true
  description = "Dterminates to create domain resources or not"
  type        = bool
}

variable "domain_name" {
  description = "The name of the domain"
  type        = string
}

variable "domain_ip_address" {
  description = "The IP address of the domain. If specified, this IP is used to created an initial A record for the domain"
  type        = string
}

variable "domain_records" {
  default     = null
  description = "Map of the DNS domain records"
  type        = map(any)
}
