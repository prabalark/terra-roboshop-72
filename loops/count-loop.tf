resource "var_resource" "comp" {
     count = length(var.comp)
     }

 provisioner "var_res" {
      command = var_resource[count.index]
 }

 variable "comp" {
      default = ["forntend","mongodb","catalogue"]
 }

