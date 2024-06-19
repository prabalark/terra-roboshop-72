
resource "comp_resource" "comp" {
  count= length(var.component)
}

variable "component" {
  default = ["forntend","mongodb","catlogue"]
}
