module "k8s_baz" {
  source = "../../../modules/k8s"

  name = "baz"
}

output "fqdns" {
  value = {
    baz = module.k8s_baz.fqdn
  }
}
