resource "null_resource" "comp" {
  count = length(var.comp)

  provisioner "local-exec" {
    command =  " echo comp_name = ${var.comp[count.index]} "
  }
}

variable "comp" {
  default = ["forntend","mangodb","catalogue"]
}