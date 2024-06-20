resource "null_resource" "comp" {
  count = length(var.comp)
}

variable "comp" {
  default = ["frontend","mongodb","catalogue"]
}