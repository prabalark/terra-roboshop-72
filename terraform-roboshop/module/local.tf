locals {
  name = var.env !="" ? "${var.compenent_name}-${var.env}" : var.compenent_name

   db_commands =[
     "rm -rf terraform-roboshop",
     "git clone https://github.com/prabalark/roboshop-72.git",
     "cd roboshop-72",
     "sudo bash ${var.compenent_name}.sh  ${var.password} "
   ]

    app_commands = [
      "sudo labauto ansible" ,
      "ansible-pull -i localhost, -U https://github.com/prabalark/roboshop-ansible-72.git roboshop-ani.yml -e role_name=${var.compenent_name} -e env=${var.env}"
    ]
    db_tags = {
       Name = "${var.compenent_name}-${var.env}"  # Name : this var we have to give as per tarraform variable
    }
    app_tags = {
       Name = "${var.compenent_name}-${var.env}"
       monitor = "true"
       compenent = var.compenent_name
       env = var.env
    }
}

