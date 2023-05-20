## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.tranzact-rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_az_rg_location"></a> [az\_rg\_location](#input\_az\_rg\_location) | Azure region where the RG will exist | `string` | n/a | yes |
| <a name="input_az_rg_name"></a> [az\_rg\_name](#input\_az\_rg\_name) | Name of the Resource group | `any` | n/a | yes |
| <a name="input_az_tags"></a> [az\_tags](#input\_az\_tags) | Map of tags that will be assigned to each resource | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_az-rg-location"></a> [az-rg-location](#output\_az-rg-location) | Azure resource group location |
| <a name="output_az-rg-name"></a> [az-rg-name](#output\_az-rg-name) | Azure resource group name |
