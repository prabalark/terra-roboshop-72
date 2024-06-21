terraform {
  backend "s3" {
    bucket = "terraform-72-rk"                   # aws --> s3
    key    = "roboshop/devenv/terraform.tfstate" # give any path ( give folder )+ .terraform.tfstate [ is very imp file,if we loose file all data will gone]
    region = "us-east-1"   #depend on usage
}
