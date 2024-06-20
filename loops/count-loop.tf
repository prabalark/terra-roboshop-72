resource "null_resource" "null" {
  count = length(var.comp)

  provisioner "local-exec" {
    command = "echo ${var.comp[count.index]} "
  }
}

variable "comp" {
  default = ["frontend","mongodb","catalogue"]
}