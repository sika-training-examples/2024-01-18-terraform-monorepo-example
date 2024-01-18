variable "name" {
  type = string
}

resource "null_resource" "k8s" {}

resource "null_resource" "dns_record" {
  depends_on = [null_resource.k8s]
}

output "fqdn" {
  value = "${var.name}.k8s.sikademo.com"
}
