env = "dev"

# changing component variable into to 2 parts ie - database_server,app_server

database_server = {

  mongodb ={
    Name ="mongodb"
    instance_type = "t3.small"
  }

  redis ={
    Name ="redis"
    instance_type = "t3.small"
  }

  mysql ={
    Name ="mysql"
    instance_type = "t3.small"
    password="RoboShop@1"
  }

  rabbitmq ={
    Name ="rabbitmq"
    instance_type = "t3.small"
    password="RoboShop123"
  }

}

app_server = {

   frontend ={
     Name ="frontend"
     instance_type = "t3.small"
   }

   catalogue ={
     Name ="catalogue"
     instance_type = "t3.micro"
   }

   user ={
     Name ="user"
     instance_type = "t3.micro"
  }

   cart ={
     Name ="cart"
     instance_type = "t3.micro"
  }

   shipping ={
     Name ="shipping"
     instance_type = "t3.medium"
     password="RoboShop@1"
  }

   payment ={
     Name ="payment"
     instance_type = "t3.small"
     password="RoboShop123"
  }

  # dispatch ={    # to check the log in payment only use with dispatch
  #   Name ="dispatch"
  #   instance_type = "t3.small"
  # }

}