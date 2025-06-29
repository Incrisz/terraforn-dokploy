terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

data "cloudflare_zone" "selected" {
  name = var.domain_name
}

resource "cloudflare_record" "www" {
  zone_id = data.cloudflare_zone.selected.id
  name    = var.subdomain
  type    = "A"
  content   = var.record_value
  ttl     = 1
  proxied = true
}
