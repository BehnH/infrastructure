resource "digitalocean_firewall" "ssh_ip_whitelist" {
  name = "Standard-ProtectedSSH-FW"
  tags = ["terraform"]

  droplet_ids = ["${digitalocean_droplet.loninfra-vault.id}"]

  inbound_rule {
    protocol   = "tcp"
    port_range = "22"
    source_addresses = [
      "37.120.159.243",
      "213.122.73.203"
    ]
  }

  lifecycle {
    ignore_changes = [
      pending_changes
    ]
  }
}

resource "digitalocean_firewall" "allow_all_outbound_traffic" {
  name = "Allow-All-Outbound"
  tags = ["terraform"]

  droplet_ids = ["${digitalocean_droplet.loninfra-vault.id}"]

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}