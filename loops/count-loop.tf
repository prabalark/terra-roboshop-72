
resource "var_resource" "comp" {
  count = length(var.comp)
  ## provisioner is same like variable
  provisioner "var.cmp" {
    command = var.comp[count.index]
  }
}

 provider "aws" {
   region = "us-east-1"
 }

 variable "comp" {
    default = {
      apple = 10
      mango = 20
      orange = 30
    }
 }

