locals {
  subnet_name_prefixes = zipmap(var.subnet_names, var.subnet_prefixes)

  azurerm_subnets = [for s in azurerm_subnet.tranzact-subnets : s]
  azurerm_subnets_name_id_map = {
    for index, subnet in local.azurerm_subnets :
    subnet.name => subnet.id
  }
}