################################################################################
# Tags
################################################################################
module "tags" {
  source       = "./modules/tags"
  iac_location = var.iac_location
  owner        = var.owner
}

################################################################################
# Resource group
################################################################################
module "az-rg" {
  source         = "./modules/resource-group"
  az_rg_location = var.az_rg_location
  az_rg_name     = var.az_rg_name

  az_tags = module.tags.tags
}

################################################################################
# Networking
################################################################################
module "az-networking" {
  source   = "./modules/virtual-network"
  location = module.az-rg.az-rg-location
  rg_name  = module.az-rg.az-rg-name
}

################################################################################
# Storage
################################################################################
module "storage" {
  source     = "./modules/storage"
  location   = module.az-rg.az-rg-location
  rg_name    = module.az-rg.az-rg-name
  sa_name    = var.sa_name
  sc_name    = var.sc_name
  my_ip      = var.my_ip
  subnet_ids = module.az-networking.subnet_ids
}

################################################################################
# Key Vault
################################################################################
module "key-vault" {
  source     = "./modules/key-vault"
  kv_name    = var.kv_name
  location   = module.az-rg.az-rg-location
  my_ip      = var.my_ip
  rg_name    = module.az-rg.az-rg-name
  subnet_ids = module.az-networking.subnet_ids
}