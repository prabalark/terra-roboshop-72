resource "null_resource" "comp" {
  count = length(var.comp)

  provisioner "local-exec" {
    command = " echo component_name = ${var.comp} "
  }
}

variable "comp" {
  default = ["frontend","mongodb","catalogue"]
}