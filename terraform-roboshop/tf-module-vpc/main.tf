resource "aws_vpc" "main" {
  cidr_block = var.cidr_block  # var1 keep in envdev-var.tfvars
  enable_dns_support = true
  enable_dns_hostnames = true
}