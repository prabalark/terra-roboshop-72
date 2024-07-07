 # in ansible we are keeping database_server & app_server are separate

module "database_server" {
  for_each = var.database_server

  source = "./module"
  compenent_name=each.value["Name"]
  env = var.env
  instance_type=each.value["instance_type"]
  password=lookup(each.value,"password","null")
}

module "app_server" {
  depends_on = [module.database_server]
  for_each = var.app_server

  source = "./module"
  compenent_name=each.value["Name"]
  env = var.env
  instance_type=each.value["instance_type"]
  password=lookup(each.value,"password","null")
}