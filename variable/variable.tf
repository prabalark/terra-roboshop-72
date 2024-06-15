variable "string" {
  default = "hello world"
}

output "string" {
  value = var.string
}