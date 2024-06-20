resource "var_resource" "comp" {
  count = length(var.comp)
  ## provisioner is same like variable
  provisioner "var.cmp" {
    command = var.comp[count.index]
  }
}

 variable "comp" {
    default = {
      apple = 10
      mango = 20
      orange = 30
    }
 }

