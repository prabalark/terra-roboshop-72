resource "null_resource" "comp2" {
  count = length(var.comp)

  provisioner "local-exec" {
    command = "echo ${var.comp[count.index]} "
  }
}

variable "comp" {
  default = {
    apple =10
    orange=20
    grape=30
  }
}