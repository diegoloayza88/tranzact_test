output "virtual_network_id" {
  description = "Virtual network generated id"
  value       = azurerm_virtual_network.tranzact-vnet.id
}

output "virtual_network_location" {
  description = "Virtual network location"
  value       = azurerm_virtual_network.tranzact-vnet.location
}

output "virtual_network_name" {
  description = "Virtual network name"
  value       = azurerm_virtual_network.tranzact-vnet.name
}

output "virtual_network_space" {
  description = "Virtual network space"
  value       = azurerm_virtual_network.tranzact-vnet.address_space
}

output "subnet_ids" {
  value = values(azurerm_subnet.tranzact-subnets)[*].id
}