# terra-roboshop-72

## instance creation
resource "aws_instance" "web" {
ami           = "ami-0b4f379183e5706b9" # devops-practice
instance_type = "t2.micro"

tags = {
Name = "web-server"
}
}
output "web" {
value = aws_instance.web.public_ip
}

## for dynamic pick up of ami
data "aws_ami" "ami" {
most_recent = true
name_regex  = "Centos-8-DevOps-Practice"
owners      = ["973714476881"]
}

output "ami" {
value = data.aws_ami.ami.image_id
}

# create record
resource "aws_route53_record" "reccord" {
zone_id = "Z03484922ZJTTIW47BAFL"
name    = "frnd.devops72bat.online"
type    = "A"
ttl     = 1
records = [aws_instance.web.public_ip]
}