resource "null_resource" "null" {
  count= length(var.comp)
  provisioner "local-exec" {
    command = var.comp[count.index]
  }
}

variable "comp" {
  default = ["forntend","mangodb","catalogue"]
}