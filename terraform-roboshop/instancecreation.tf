data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "redis" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "user" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "cart" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mysql" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "shipping" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "rabbitmq" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "payment" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "dispatch" {
  ami           = data.aws_ami.ami.image_id # devops-practice
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}