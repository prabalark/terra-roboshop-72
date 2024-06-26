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
        instance_type = "t3.small"
        password="RoboShop@1"
      }
      Shipping ={
        Name ="Shipping"
        instance_type = "t3.medium"
        password="RoboShop@1"
      }
      RabbitMQ ={
        Name ="RabbitMQ"
        instance_type = "t3.small"
        password="RoboShop123"
      }
      Payment ={
        Name ="Payment"
        instance_type = "t3.small"
        password="RoboShop123"
      }
      Dispatch ={
        Name ="Dispatch"
        instance_type = "t3.small"
      }
}