variable "location" {
  type        = string
  description = "Location where the storage account will exist"
}

variable "rg_name" {
  type        = string
  description = "Name of the Resource group where the storage account will be created"
}

variable "sa_name" {
  type        = string
  description = "Storage account name"
}

variable "sc_name" {
  type        = string
  description = "Name of storage container"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet ids"
}

variable "my_ip" {
  type        = string
  description = "My current ip address"
}