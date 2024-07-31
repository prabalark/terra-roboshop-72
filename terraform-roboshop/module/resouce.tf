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
  count = var.provisioner ? 1 : 0
  depends_on = [aws_instance.instance, aws_route53_record.records]

  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "centos"
      password = "DevOps321"
      host = aws_instance.instance.private_ip      # single instance
    }
    inline = [
      "rm -rf terraform-roboshop",
      "git clone https://github.com/prabalark/roboshop-72.git",
      "cd roboshop-72",
      "sudo bash ${var.compenent_name}.sh  ${var.password} "
    ]
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

