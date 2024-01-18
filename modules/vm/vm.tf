variable "name" {
  type = string
}

resource "null_resource" "vm" {}

resource "null_resource" "dns_record" {
  depends_on = [null_resource.vm]
}

output "name" {
  value = var.name
}

output "fqdn" {
  value = "${var.name}.sikademo.com"
}
