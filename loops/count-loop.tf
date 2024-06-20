resource "var_resource" "comp" {
     count = length(var.comp)
     }

 provisioner "local-exce" {
   command = var_resource[count.index]
 }

 variable "comp" {
      default = ["forntend","mongodb","catalogue"]
 }

