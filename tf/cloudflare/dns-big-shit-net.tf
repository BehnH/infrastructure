resource "cloudflare_record" "big-shit-net_www" {
  zone_id = var.big-shit-net_zone
  name    = "www.${var.big-shit-net_domain}"
  type    = "CNAME"
  value   = "big-shit.net"
  proxied = true
}