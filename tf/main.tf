terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "behnh"

    workspaces {
      name = "behnhorg"
    }
  }

  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }

    digitalocean = {
      source = "digitalocean/digitalocean"
    }

    vault = {
      source = "hashicorp/vault"
    }
  }
}

variable "vault_token" {}
variable "vault_address" {}

provider "vault" {
    address = var.vault_address
    token = var.vault_token
}

data "vault_generic_secret" "cloudflare" {
    path = "kv/terraform/cloudflare"
}

data "vault_generic_secret" "digitalocean" {
    path = "kv/terraform/digitalocean"
}

provider "cloudflare" {
  email     = data.vault_generic_secret.cloudflare.data["email"]
  api_token = data.vault_generic_secret.cloudflare.data["api_token"]
}

provider "digitalocean" {
  token = data.vault_generic_secret.digitalocean.data["token"]
}

module "cloudflare" {
  source = "./cloudflare/"
}

module "digitalocean" {
  source = "./digitalocean/"
}