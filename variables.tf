variable "az_rg_location" {
  type        = string
  description = "Azure region where the RG will exist"
}

variable "az_rg_name" {
  type        = string
  description = "Name of the Resource group"
}

variable "vnet_name" {
  type        = string
  description = "Virtual network name"
}

variable "sa_name" {
  type        = string
  description = "Storage account name"
}

variable "sc_name" {
  type        = string
  description = "Storage container name"
}

variable "kv_name" {
  type        = string
  description = "Key vault name"
}

variable "my_ip" {
  type        = string
  description = "My current ip to restrict access to azure resources"
}

variable "owner" {
  type        = string
  description = "The name of the owner of the code"
}

variable "iac_location" {
  type        = string
  description = "url of the repository that has the infrastructure as code"
}