data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "tranzact-key-vault" {
  location            = var.location
  name                = var.kv_name
  resource_group_name = var.rg_name
  sku_name            = "standard"
  tenant_id           = data.azurerm_client_config.current.tenant_id

  network_acls {
    bypass                     = "AzureServices"
    default_action             = "Deny"
    ip_rules                   = [var.my_ip]
    virtual_network_subnet_ids = var.subnet_ids
  }
}

resource "azurerm_key_vault_access_policy" "tranzact-kv-access-policy" {
  key_vault_id = azurerm_key_vault.tranzact-key-vault.id
  object_id    = data.azurerm_client_config.current.object_id
  tenant_id    = data.azurerm_client_config.current.tenant_id

  key_permissions = [
    "Get",
  ]

  secret_permissions = [
    "Get",
  ]
}