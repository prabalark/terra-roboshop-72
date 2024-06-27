env = "env-dev"

components = {

  frontend ={
    Name ="frontend"
    instance_type = "t3.small"
  }

  mongodb ={
    Name ="mongodb"
    instance_type = "t3.small"
  }
  catalogue ={
    Name ="catalogue"
    instance_type = "t3.micro"
  }

  redis ={
    Name ="redis"
    instance_type = "t3.small"
  }

  user ={
    Name ="user"
    instance_type = "t3.micro"
  }

  cart ={
    Name ="cart"
    instance_type = "t3.micro"
  }

  mysql ={
    Name ="mysql"
    instance_type = "t3.small"
    password="RoboShop@1"
  }

  shipping ={
    Name ="shipping"
    instance_type = "t3.medium"
    password="RoboShop@1"
  }

  rabbitmq ={
    Name ="rabbitmq"
    instance_type = "t3.small"
    password="RoboShop123"
  }

  payment ={
    Name ="payment"
    instance_type = "t3.small"
    password="RoboShop123"
  }

  dispatch ={
    Name ="dispatch"
    instance_type = "t3.small"
  }

}