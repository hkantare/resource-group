module "resource_group" {
  count               = var.existing_resource_group_id == "" ? 1 : 0
  source              = "git::https://github.com/terraform-ibm-modules/terraform-ibm-resource-group.git?ref=v1.0.5"
  resource_group_name = var.resource_group_name == null ? "${var.environment_name}-resource-group" : var.resource_group_name
}
