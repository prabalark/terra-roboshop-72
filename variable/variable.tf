 #string
variable "string" {
  default = "hello world"
}

output "string" {
  value = var.string
}


 #number
variable "number" {
  default = 100
}

output "number" {
  value = var.number
}

 variable "float" {
   default = 100.11
 }


  #boolean
 variable "boolean_true" {
   default = true
 }

 output "boolean_true" {
   value = var.boolean_true
 }

  #boolean
 variable "boolean_false" {
   default = false
 }

 output "boolean_false" {
   value = var.boolean_false
 }


 #list
 variable "list" {
   default = [100,true,"rk"]
 }

 output "list" {
   value = var.list[2]
 }

 #directory
 variable "dire" {
   default = {
   number = 100 ,
   boolean = true,
   string = "rk" }
 }

 output "dire" {
   value = var.dire["number"]
 }

 ################################################33

   #dynamic variable
 variable "str" {}

 variable "env" {}

 variable "auto" {}




