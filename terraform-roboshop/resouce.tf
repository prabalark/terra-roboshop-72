resource "aws_instance" "instance" {
  for_each = var.components
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = [data.aws_security_group.security_group.id]

  tags = {
    Name = each.value["Name"]
  }
}

# create record
resource "aws_route53_record" "records" {
  for_each = var.components
  zone_id = "Z03484922ZJTTIW47BAFL"
  name    = "${each.value["Name"]}.devops72bat.online"
  type    = "A"
  ttl     = 1
  records = [aws_instance.instance[each.value["Name"]].private_ip]
}