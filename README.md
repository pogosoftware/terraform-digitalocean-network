# terraform-digitalocean-network

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | 2.21.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_domain.main](https://registry.terraform.io/providers/digitalocean/digitalocean/2.21.0/docs/resources/domain) | resource |
| [digitalocean_record.main](https://registry.terraform.io/providers/digitalocean/digitalocean/2.21.0/docs/resources/record) | resource |
| [digitalocean_vpc.main](https://registry.terraform.io/providers/digitalocean/digitalocean/2.21.0/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_domain"></a> [create\_domain](#input\_create\_domain) | Determinates to create domain resources or not | `bool` | `false` | no |
| <a name="input_create_vpc"></a> [create\_vpc](#input\_create\_vpc) | Dterminates to create vpc resources or not | `bool` | `false` | no |
| <a name="input_domain_ip_address"></a> [domain\_ip\_address](#input\_domain\_ip\_address) | The IP address of the domain. If specified, this IP is used to created an initial A record for the domain | `string` | `null` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Required if `create_domain` is set to `true`. The name of the domain | `string` | `null` | no |
| <a name="input_domain_records"></a> [domain\_records](#input\_domain\_records) | Map of the DNS domain records | <pre>list(object({<br>    name     = string<br>    type     = string<br>    value    = string<br>    port     = optional(number)<br>    priority = optional(number)<br>    weight   = optional(number)<br>    ttl      = optional(number)<br>    flags    = optional(number)<br>    tag      = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_vpc_description"></a> [vpc\_description](#input\_vpc\_description) | A free-form text field up to a limit of 255 characters to describe the VPC | `string` | `null` | no |
| <a name="input_vpc_ip_range"></a> [vpc\_ip\_range](#input\_vpc\_ip\_range) | The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than `/16` or smaller than `/24` | `string` | `null` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Required if `create_vpc` is set to `true`. A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only | `string` | `null` | no |
| <a name="input_vpc_region"></a> [vpc\_region](#input\_vpc\_region) | The DigitalOcean region slug for the VPC's location | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain_id"></a> [domain\_id](#output\_domain\_id) | The name of the domain |
| <a name="output_domain_records_fqdn"></a> [domain\_records\_fqdn](#output\_domain\_records\_fqdn) | The key value pair of domains records |
| <a name="output_domain_ttl"></a> [domain\_ttl](#output\_domain\_ttl) | The TTL value of the domain |
| <a name="output_domain_urn"></a> [domain\_urn](#output\_domain\_urn) | The uniform resource name of the domain |
| <a name="output_vpc_default"></a> [vpc\_default](#output\_vpc\_default) | A boolean indicating whether or not the VPC is the default one for the region |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The unique identifier for the VPC |
| <a name="output_vpc_urn"></a> [vpc\_urn](#output\_vpc\_urn) | The uniform resource name (URN) for the VPC |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->