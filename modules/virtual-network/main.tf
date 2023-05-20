resource "azurerm_virtual_network" "tranzact-vnet" {
  address_space       = var.vnet_cidr
  location            = var.location
  name                = var.vnet_name
  resource_group_name = var.rg_name

  tags = var.az_tags
}

resource "azurerm_subnet" "tranzact-subnets" {
  for_each = toset(var.subnet_names)

  address_prefixes     = [local.subnet_name_prefixes[each.value]]
  name                 = each.value
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.tranzact-vnet.name
  service_endpoints = ["Microsoft.KeyVault", "Microsoft.Storage"]
}

resource "azurerm_subnet_network_security_group_association" "tranzact-vnet-sg-association" {
  for_each = var.nsg_ids

  network_security_group_id = each.value
  subnet_id                 = local.azurerm_subnets_name_id_map[each.key]
}

resource "azurerm_subnet_route_table_association" "tranzact-subnet-rt-association" {
  for_each = var.route_tables_ids

  route_table_id = each.value
  subnet_id      = local.azurerm_subnets_name_id_map[each.key]
}