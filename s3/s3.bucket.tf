terraform {
  backend "s3" {
    bucket = "terraform-72-rk"
    key    = "roboshop/devenv/terraform.tfstate"
    region = "us-east-1"
  }
}
