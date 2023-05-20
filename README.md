## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_az-networking"></a> [az-networking](#module\_az-networking) | ./modules/virtual-network | n/a |
| <a name="module_az-rg"></a> [az-rg](#module\_az-rg) | ./modules/resource-group | n/a |
| <a name="module_key-vault"></a> [key-vault](#module\_key-vault) | ./modules/key-vault | n/a |
| <a name="module_storage"></a> [storage](#module\_storage) | ./modules/storage | n/a |
| <a name="module_tags"></a> [tags](#module\_tags) | ./modules/tags | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_az_rg_location"></a> [az\_rg\_location](#input\_az\_rg\_location) | Azure region where the RG will exist | `string` | n/a | yes |
| <a name="input_az_rg_name"></a> [az\_rg\_name](#input\_az\_rg\_name) | Name of the Resource group | `string` | n/a | yes |
| <a name="input_iac_location"></a> [iac\_location](#input\_iac\_location) | url of the repository that has the infrastructure as code | `string` | n/a | yes |
| <a name="input_kv_name"></a> [kv\_name](#input\_kv\_name) | Key vault name | `string` | n/a | yes |
| <a name="input_my_ip"></a> [my\_ip](#input\_my\_ip) | My current ip to restrict access to azure resources | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | The name of the owner of the code | `string` | n/a | yes |
| <a name="input_sa_name"></a> [sa\_name](#input\_sa\_name) | Storage account name | `string` | n/a | yes |
| <a name="input_sc_name"></a> [sc\_name](#input\_sc\_name) | Storage container name | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Virtual network name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | n/a |
