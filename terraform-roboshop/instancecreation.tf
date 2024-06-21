data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

variable "varit2" {
  default = "t2.micro"
}

#variable "varit3" {
 # default = "t3.medium"
#}

data "aws_security_group" "security_group" {
   name = "allow-all"
}

variable "component" {
  default = {
    frontend ={
      Name ="frontend"
      instance_type = "t3.small"
    }
    mongodb ={
      Name ="mongodb"
      instance_type = "t3.medium"
    }
    catalogue ={
      Name ="catalogue"
      instance_type = "t3.micro"
    }
    Redis ={
      Name ="Redis"
      instance_type = "t3.small"
    }
    User ={
      Name ="User"
      instance_type = "t3.micro"
    }
    Cart ={
      Name ="Cart"
      instance_type = "t3.micro"
    }
    MySQL ={
      Name ="MySQL"
      instance_type = "t3.medium"
    }
    Shipping ={
      Name ="Shipping"
      instance_type = "t3.small"
    }
    RabbitMQ ={
      Name ="RabbitMQ"
      instance_type = "t3.small"
    }
    Payment ={
      Name ="Payment"
      instance_type = "t3.small"
    }
    Dispatch ={
      Name ="Dispatch"
      instance_type = "t3.small"
    }
  }
}

resource "aws_instance" "instance" {
  for_each = var.component
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = [data.aws_security_group.security_group.id]

  tags = {
    Name = each.value["Name"]
  }
}

 # create record
 resource "aws_route53_record" "records" {
   for_each = var.component
   zone_id = "Z03484922ZJTTIW47BAFL"
   name    = "${each.value["Name"]}.devops72bat.online"
   type    = "A"
   ttl     = 1
   records = [aws_instance.instance[each.value["Name"]].private_ip]
 }

# resource "aws_instance" "mongodb" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit3
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "mongodb"
#   }
# }
#
# # create record
# resource "aws_route53_record" "mongodb" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "mongodb.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.mongodb.private_ip]
# }
#
# resource "aws_instance" "catalogue" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit2
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "catalogue"
#   }
# }
#
# # create record
# resource "aws_route53_record" "catalogue" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "catalogue.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.catalogue.private_ip]
# }
#
#
# resource "aws_instance" "redis" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit2
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "redis"
#   }
# }
#
# # create record
# resource "aws_route53_record" "redis" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "redis.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.redis.private_ip]
# }
#
# resource "aws_instance" "user" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit2
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "user"
#   }
# }
#
# # create record
# resource "aws_route53_record" "user" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "user.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.user.private_ip]
# }
#
# resource "aws_instance" "cart" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit2
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "cart"
#   }
# }
#
# # create record
# resource "aws_route53_record" "cart" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "cart.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.cart.private_ip]
# }
#
# resource "aws_instance" "mysql" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit3
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "mysql"
#   }
# }
#
# # create record
# resource "aws_route53_record" "mysql" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "mysql.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.mysql.private_ip]
# }
#
# resource "aws_instance" "shipping" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit2
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "shipping"
#   }
# }
#
# # create record
# resource "aws_route53_record" "shipping" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "shipping.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.shipping.private_ip]
# }
#
# resource "aws_instance" "rabbitmq" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit2
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "rabbitmq"
#   }
# }
#
# # create record
# resource "aws_route53_record" "rabbitmq" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "rabbitmq.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.rabbitmq.private_ip]
# }
#
# resource "aws_instance" "payment" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit2
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "payment"
#   }
# }
#
# # create record
# resource "aws_route53_record" "payment" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "payment.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.payment.private_ip]
# }
#
# resource "aws_instance" "dispatch" {
#   ami           = data.aws_ami.ami.image_id # devops-practice
#   instance_type = var.varit2
#   vpc_security_group_ids = [data.aws_security_group.security_group.id]
#
#   tags = {
#     Name = "dispatch"
#   }
# }
#
# # create record
# resource "aws_route53_record" "dispatch" {
#   zone_id = "Z03484922ZJTTIW47BAFL"
#   name    = "dispatch.devops72bat.online"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.dispatch.private_ip]
# }