# terraform-digitalocean-network

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_vpc"></a> [create\_vpc](#input\_create\_vpc) | Dterminates to create vpc resources or not | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | The DigitalOcean region slug for the VPC's location | `string` | n/a | yes |
| <a name="input_vpc_description"></a> [vpc\_description](#input\_vpc\_description) | A free-form text field up to a limit of 255 characters to describe the VPC | `string` | `null` | no |
| <a name="input_vpc_ip_range"></a> [vpc\_ip\_range](#input\_vpc\_ip\_range) | The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than `/16` or smaller than `/24` | `string` | `null` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Required if `create_vpc` is set to `true`. A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_default"></a> [vpc\_default](#output\_vpc\_default) | A boolean indicating whether or not the VPC is the default one for the region |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The unique identifier for the VPC |
| <a name="output_vpc_urn"></a> [vpc\_urn](#output\_vpc\_urn) | The uniform resource name (URN) for the VPC |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->