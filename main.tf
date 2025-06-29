module "ec2" {
  source             = "./modules/ec2"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  availability_zone  = var.availability_zone
  # key_pair_name      = var.key_pair_name
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}



module "dns" {
  source                = "./modules/dns"
  cloudflare_api_token = var.cloudflare_api_token
  domain_name          = var.domain_name
  subdomain            = "www"
  record_value         = module.ec2.public_ip
}
