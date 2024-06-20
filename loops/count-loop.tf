resource "null_resource" "comp4" {
  for_each = var.comp

  provisioner "local-exec" {
    command = "echo ${each.value}"
  }
}

variable "comp" {
  default = {
    apple =10
    orange=20
    grape=30
  }
}