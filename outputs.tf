output "resource_group_name" {
  value = module.az-rg.az-rg-name
}

output "vnet_name" {
  value = module.az-networking.virtual_network_name
}