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
 variable "boolean_true" {
   default = true
 }

 output "boolean_true" {
   value = var.boolean_true
 }

  #boolean
 variable "boolean_flase" {
   default = flase
 }

 output "boolean_flase" {
   value = var.boolean_flase
 }