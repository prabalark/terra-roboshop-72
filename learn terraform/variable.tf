variable "component" {
  default = {
    frontend = {
      Name = "frontend"
      instance_type = "t3.small"
    }
  }
}

  output "component" {
   value = var.component.frontend["Name"]
}