resource "digitalocean_droplet" "loninfra-vault" {
  image             = "ubuntu-20-04-x64"
  name              = "loninfra-vault"
  graceful_shutdown = false
  region            = "lon1"
  size              = "s-1vcpu-2gb"
  monitoring        = true
  ipv6              = true
}