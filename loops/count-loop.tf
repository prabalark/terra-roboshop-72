resource "null_resource" "comp8" {
  for_each = var.comp

  provisioner "local-exec" {
    command = "echo  fruit_name => ${each.value["fr_n"]} = ${each.value["price"]}"
  }
}

variable "comp" {
  default = {
    apple = {
      fr_n = "apple"
      price = 10
    }
    orange ={
      fr_n = "orange"
      price = 20
    }
    grape = {
     fr_n = "grape"
     price = 30
    }
  }
}