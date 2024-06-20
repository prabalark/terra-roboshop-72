resource "var_resource" "comp" {
     count = length(var.comp)
     }

  ## provisioner is same like variable
   provisioner  "local-exce" {
     command = var.comp[count.index]
   }

 variable "comp" {
      default = ["forntend","mongodb","catalogue"]
 }

