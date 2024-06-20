resource "var_resource" "comp" {
  count = length(var.comp)
  ## provisioner is same like variable
  provisioner "var.cmp" {
    command = var.comp[count.index]
  }
}

 variable "comp" {
      default = ["forntend","mongodb","catalogue"]
 }

