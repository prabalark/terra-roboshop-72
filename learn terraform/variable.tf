variable "component" {
  default = {
    frontend = {
      Name = "frontend"
      instance_type = "t3.small"
    }
  }
}

  output "string" {
  value = var.component.frontend["Name"]
}