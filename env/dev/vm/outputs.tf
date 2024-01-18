output "fqdns" {
  value = merge({
    foo = module.vm_foo.fqdn
    bar = module.vm_bar.fqdn
    }, {
    for k, v in module.vm_dev : "${v.name}" => v.fqdn
  })
}
