data "aws_security_group" "security_group" {
  name = "allow-all1"
}

output "security_group" {
  value = data.aws_security_group.security_group
}