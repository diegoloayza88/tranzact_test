output "az-rg-name" {
  value       = azurerm_resource_group.tranzact-rg.name
  description = "Azure resource group name"
}

output "az-rg-location" {
  value       = azurerm_resource_group.tranzact-rg.location
  description = "Azure resource group location"
}