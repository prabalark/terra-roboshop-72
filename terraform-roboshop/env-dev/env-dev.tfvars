terraform {
  backend "s3" {
    bucket = "terraform-72-rk"
    key    = "roboshop2/env-dev/terraform.tfstate"
    region = "us-east-1"
  }
}
