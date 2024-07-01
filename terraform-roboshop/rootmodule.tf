module "resource" {
  for_each = var.components

  source = "./module"
  compenent_name=each.value["Name"]
  env = var.env
  instance_type=each.value["instance_type"]
  password=lookup(each.value,"password","null")
}

