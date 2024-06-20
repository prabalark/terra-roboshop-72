resource "null_resource" "null" {
  count= length(var.comp)
}

variable "comp" {
  default = ["forntend","mangodb","catalogue"]
}