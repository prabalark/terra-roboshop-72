resource "null_resource" "comp2" {
  for_each = var.comp

  provisioner "local-exec" {
    command = "echo ${each.key} = ${each.value}"
  }
}

variable "comp" {
  default = {
    apple =10
    orange=20
    grape=30
  }
}