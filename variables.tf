# # AWS vars
variable "ami_id" {
  description = "AMI ID to use for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for subnet and EC2"
  type        = string
}

variable "key_pair_name" {
  description = "Name of the SSH key pair"
  type        = string
}


# Cloudflare vars
variable "cloudflare_api_token" {}
variable "domain_name" {}
