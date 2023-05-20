variable "az_rg_location" {
  description = "Azure region where the RG will exist"
  type        = string
}

variable "az_rg_name" {
  description = "Name of the Resource group"
}

variable "az_tags" {
  description = "Map of tags that will be assigned to each resource"
  type        = map(any)
  default     = {}
}