resource "aws_vpc" "main" {
  cidr_block = var.cidr_block  # var1 keep in envdev-main.tfvars
}