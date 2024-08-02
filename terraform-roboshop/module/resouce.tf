# create instance
resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.security_group.id]

  # keeping tags ,in terraform condition
  tags = {
    Name = local.name
  }
}

  # create shell
  resource "null_resource" "provisioner13" {
   # count = var.provisioner ? 1 : 0 [ no need in local.tf ]
  depends_on = [aws_instance.instance, aws_route53_record.records]

  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "centos"
      password = "DevOps321"
      host = aws_instance.instance.private_ip      # single instance
    }

    inline = var.app_type =="db" ? local.db_commands : local.app_commands

    #inline = [
    #  "rm -rf terraform-roboshop", #this is shell git-hub
    #  "git clone https://github.com/prabalark/roboshop-72.git",  #this is shell git-hub
    #  "cd roboshop-72",
    #  "sudo bash ${var.compenent_name}.sh  ${var.password} "
    #]
  }
}

# create record
resource "aws_route53_record" "records" {
  zone_id = "Z03484922ZJTTIW47BAFL"
  name    = "${var.compenent_name}.devops72bat.online"
  type    = "A"
  ttl     = 1
  records = [aws_instance.instance.private_ip]  # single instance
}

# this will create in aws--> roles
resource "aws_iam_role" "test_role" {
  name = "${var.compenent_name}-${var.env}-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com" # this is imp
        }
      },
    ]
  })

  tags = {
    tag-key = "${var.compenent_name}-${var.env}-role"
  }
}

