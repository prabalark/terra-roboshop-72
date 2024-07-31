locals {
  name = var.env !="" ? "${var.compenent_name}-${var.env}" : var.compenent_name
}