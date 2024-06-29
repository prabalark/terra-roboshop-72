resource "null_resource" "sample2" {
  provisioner "local-exec" {
    command = "echo hello world=${var.inpt}"
  }
}

variable "inpt" {}