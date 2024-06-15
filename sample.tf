resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9" # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "web-server"
  }
}

output "web" {
  value = aws_instance.web.public_ip
  value = aws_instance.web.private_ip
}