resource "null_resource" "sample1" {
  provisioner "local-exec" {
    command = "echo hello world=${var.inpt}"
  }
}

variable "inpt" {}