locals {
  vm_dev_instances = {
    "1" = {}
    "2" = {}
    "3" = {}
  }
}

module "vm_dev" {
  source = "../../../modules/vm"

  for_each = local.vm_dev_instances

  name = "dev-${each.key}"
}
