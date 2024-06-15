resource "aws_instance" "web1" {
  ami           = "ami-0b4f379183e5706b9" # devops-practice
  instance_type = "t2.micro"
  }
