variable "name" {
  type = string
}

variable "net" {
  type = string
}

resource "null_resource" "net" {}

output "net" {
  value = var.net
}
