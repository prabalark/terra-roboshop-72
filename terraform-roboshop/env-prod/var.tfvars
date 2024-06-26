env = "env-prod"

components = {
  mongodb ={
    Name ="mongodb"
    instance_type = "t3.small"
  }
  catalogue ={
    Name ="catalogue"
    instance_type = "t3.micro"
  }

  frontend ={
    Name ="frontend"
    instance_type = "t3.small"
  }
  #    Redis ={
  #      Name ="Redis"
  #      instance_type = "t3.small"
  #    }
  #    User ={
  #      Name ="User"
  #      instance_type = "t3.micro"
  #    }
  #    Cart ={
  #      Name ="Cart"
  #      instance_type = "t3.micro"
  #    }
  #    MySQL ={
  #      Name ="MySQL"
  #      instance_type = "t3.small"
  #    }
  #    Shipping ={
  #      Name ="Shipping"
  #      instance_type = "t3.medium"
  #    }
  #    RabbitMQ ={
  #      Name ="RabbitMQ"
  #      instance_type = "t3.small"
  #    }
  #    Payment ={
  #      Name ="Payment"
  #      instance_type = "t3.small"
  #    }
  #    Dispatch ={
  #      Name ="Dispatch"
  #      instance_type = "t3.small"
  #    }
}