module "my-ec2" {
  source             = "./modules/ec2"
  instance_type      = var.instance_type
  ami_id             = var.ami_id
  vpc_id             = var.vpc_id
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  key_name           = var.key_name
}

module "codeartifact" {
  source              = "./modules/codeartifact"
  domain_name         = var.domain_name
  repository_name     = var.repository_name
  external_connection = var.external_connection
}
