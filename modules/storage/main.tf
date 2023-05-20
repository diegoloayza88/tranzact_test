resource "azurerm_storage_account" "tranzact-storage-account" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = var.location
  name                     = var.sa_name
  resource_group_name      = var.rg_name

  network_rules {
    default_action             = "Deny"
    virtual_network_subnet_ids = var.subnet_ids
    ip_rules                   = [var.my_ip]
  }
}

resource "azurerm_storage_container" "tranzact-storage-container" {
  name                  = var.sc_name
  storage_account_name  = azurerm_storage_account.tranzact-storage-account.name
  container_access_type = "private"
}