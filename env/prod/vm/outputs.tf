output "fqdns" {
  value = {
    foo = module.vm_foo.fqdn
    bar = module.vm_bar.fqdn
  }
}
