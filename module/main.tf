module "sample" {
  source = "./module1"
  input = module.sample.sample
}