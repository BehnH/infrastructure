resource "cloudflare_record" "trapped-in-space_keybase_txt" {
  zone_id = var.trapped-in-space_zone
  name    = "trapped-in.space"
  type    = "TXT"
  value   = "keybase-site-verification=HvoVniUdU9QMaL-n4Euu3lYLIkLOyv6J1tJm8sixHo8"
}

resource "cloudflare_record" "trapped-in-space_cloudflare_mx_1" {
  zone_id  = var.trapped-in-space_zone
  name     = "trapped-in.space"
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  priority = 4
}

resource "cloudflare_record" "trapped-in-space_cloudflare_mx_2" {
  zone_id  = var.trapped-in-space_zone
  name     = "trapped-in.space"
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  priority = 34
}

resource "cloudflare_record" "trapped-in-space_cloudflare_mx_3" {
  zone_id  = var.trapped-in-space_zone
  name     = "trapped-in.space"
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  priority = 63
}

resource "cloudflare_record" "trapped-in-space_cloudflare_mx_txt" {
  zone_id = var.trapped-in-space_zone
  name    = "trapped-in.space"
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
}