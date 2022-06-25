# digitalocean_domain

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_domain.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain) | resource |
| [digitalocean_record.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | resource |
| [digitalocean_domain.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/domain) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_domain"></a> [create\_domain](#input\_create\_domain) | Dterminates to create domain resources or not | `bool` | `true` | no |
| <a name="input_domain_ip_address"></a> [domain\_ip\_address](#input\_domain\_ip\_address) | The IP address of the domain. If specified, this IP is used to created an initial A record for the domain | `string` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The name of the domain | `string` | n/a | yes |
| <a name="input_domain_records"></a> [domain\_records](#input\_domain\_records) | Map of the DNS domain records | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain_id"></a> [domain\_id](#output\_domain\_id) | The name of the domain |
| <a name="output_domain_records"></a> [domain\_records](#output\_domain\_records) | domains records |
| <a name="output_domain_ttl"></a> [domain\_ttl](#output\_domain\_ttl) | The TTL value of the domain |
| <a name="output_domain_urn"></a> [domain\_urn](#output\_domain\_urn) | The uniform resource name of the domain |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->