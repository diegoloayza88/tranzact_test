variable "vnet_cidr" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "CIDR block for the virtual network"
}

variable "location" {
  type        = string
  description = "Location for the virtual network"
}

variable "vnet_name" {
  type        = string
  default     = "tranzact-vnet"
  description = "Virtual network name"
}

variable "rg_name" {
  type        = string
  description = "Azure resource group name to attach the virtual network"
}

variable "subnet_names" {
  type        = list(string)
  default     = ["tranzact-subnet1"]
  description = "list of public subnets inside the vNet."
}

variable "subnet_prefixes" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "The address prefix to use for the subnet."
}

variable "nsg_ids" {
  type = map(string)
  default = {
  }
  description = "A map of subnet name to Network Security Group IDs"
}

variable "route_tables_ids" {
  type        = map(string)
  default     = {}
  description = "A map of subnet name to Route table ids"
}

variable "az_tags" {
  description = "Map of tags that will be assigned to each resource"
  type        = map(any)
  default     = {}
}