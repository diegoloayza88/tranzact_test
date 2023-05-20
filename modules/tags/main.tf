locals {
  tags_unfiltered = {
    owner        = var.owner
    iac_location = var.iac_location
  }

  tags = {
    for k, v in local.tags_unfiltered : k => v if v != ""
  }
}