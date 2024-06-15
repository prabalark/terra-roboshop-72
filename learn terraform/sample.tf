## for dynamic pick up of ami
data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

## instance creation
resource "aws_instance" "web" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t2.micro"

  tags = {
    Name = "web-server"
  }
}
output "web" {
  value = aws_instance.web.public_ip
}

# create record
resource "aws_route53_record" "reccord" {
  zone_id = "Z03484922ZJTTIW47BAFL"
  name    = "frnd.devops72bat.online"
  type    = "A"
  ttl     = 1
  records = [aws_instance.web.public_ip]
}