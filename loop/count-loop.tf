resource "null_resource" "null" {
  count=5
}


variable "component" {
  default = ["forntend","mongodb","catlogue"]
}

output "comp" {
  value = var.component
}