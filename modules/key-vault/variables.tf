variable "location" {
  type        = string
  description = "Location where the key vault will exist"
}

variable "kv_name" {
  type        = string
  description = "Key vault name"
}

variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet ids"
}

variable "my_ip" {
  type        = string
  description = "My current ip address"
}


