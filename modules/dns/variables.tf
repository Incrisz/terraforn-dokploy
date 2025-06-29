variable "cloudflare_api_token" {
  type        = string
#   sensitive   = true
}

variable "domain_name" {
  type = string
}

variable "subdomain" {
  type        = string
  description = "The subdomain (e.g. 'www' or 'api')"
}

variable "record_value" {
  type        = string
  description = "The IP address the DNS record should point to"
}
