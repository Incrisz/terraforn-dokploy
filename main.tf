module "ec2" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
#   key_pair_name     = var.key_pair_name
  security_group_id = var.security_group_id
}

module "dns" {
  source = "./modules/dns"

  cloudflare_api_token = var.cloudflare_api_token
  domain_name          = var.domain_name
  record_value         = module.ec2.public_ip
}
