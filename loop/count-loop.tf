resource "null_resource" "null" {
  count=5
}


resource "null_resource" "null" {
  count= length(var.component)
}

variable "component" {
  default = ["forntend","mongodb","catlogue"]
}
