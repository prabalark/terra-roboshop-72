resource "null_resource" "list" {
  for_each = toset(var.list)

  provisioner "local-exec" {
    command = "echo ${each.key}"
  }
}

variable "list" {
  default = ["rk","inf","rk"]
}