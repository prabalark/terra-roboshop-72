resource "null_resource" "null" {
  count=5
}


resource "comp_resource" "comp" {
  count= length(var.component)
}

variable "component" {
  default = ["forntend","mongodb","catlogue"]
}
