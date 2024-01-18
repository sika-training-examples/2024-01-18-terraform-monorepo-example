module "vm" {
  source = "./vm"
}

output "vm" {
  value = module.vm
}

module "k8s" {
  source = "./k8s"
}

output "k8s" {
  value = module.k8s
}
