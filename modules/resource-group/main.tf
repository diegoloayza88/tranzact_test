resource "azurerm_resource_group" "tranzact-rg" {
  location = var.az_rg_location
  name     = var.az_rg_name

  tags = var.az_tags
}