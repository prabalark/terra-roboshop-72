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

  #boolean
 variable "boolean" {
   default = true
 }

 output "boolean" {
   value = var.boolean
 }

  #boolean
 variable "boolean" {
   default = flase
 }

 output "boolean" {
   value = var.boolean
 }