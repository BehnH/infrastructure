resource "cloudflare_record" "infra-behn-cc_ses_dkim_signingkey_1" {
  zone_id = var.behn-cc_zone
  name    = "pmer2kohn3cctqcke3oixkde3mbox4kv._domainkey.infra.behn.cc"
  type    = "CNAME"
  value   = "pmer2kohn3cctqcke3oixkde3mbox4kv.dkim.amazonses.com"
}

resource "cloudflare_record" "infra-behn-cc_ses_dkim_signingkey_2" {
  zone_id = var.behn-cc_zone
  name    = "rzps7fz67k4vwv3mqjnantq4jb3jbdhw._domainkey.infra.behn.cc"
  type    = "CNAME"
  value   = "rzps7fz67k4vwv3mqjnantq4jb3jbdhw.dkim.amazonses.com"
}

resource "cloudflare_record" "infra-behn-cc_ses_dkim_signingkey_3" {
  zone_id = var.behn-cc_zone
  name    = "fedt3nr7uoq2ui5xil4bcc5ugqfcpitn._domainkey.infra.behn.cc"
  type    = "CNAME"
  value   = "fedt3nr7uoq2ui5xil4bcc5ugqfcpitn.dkim.amazonses.com"
}

resource "cloudflare_record" "behn-cc_ses_dkim_signingkey_1" {
  zone_id = var.behn-cc_zone
  name    = "5c2wdxwy3a6guy3wwi4qwkdpreoqvj5p._domainkey.behn.cc"
  type    = "CNAME"
  value   = "5c2wdxwy3a6guy3wwi4qwkdpreoqvj5p.dkim.amazonses.com"
}

resource "cloudflare_record" "behn-cc_ses_dkim_signingkey_2" {
  zone_id = var.behn-cc_zone
  name    = "zvqaflx3qunrxv2c7cena5swjmfgnhjx._domainkey.behn.cc"
  type    = "CNAME"
  value   = "zvqaflx3qunrxv2c7cena5swjmfgnhjx.dkim.amazonses.com"
}

resource "cloudflare_record" "behn_cc" {
  zone_id = var.behn-cc_zone
  name    = var.behn-cc_domain
  type    = "CNAME"
  value   = "behn-cc-website.pages.dev"
  proxied = true
}

resource "cloudflare_record" "behn-cc_languagetool" {
  zone_id = var.behn-cc_zone
  name    = "lt.behn.cc"
  type    = "CNAME"
  value   = "4146dfec-cd09-4c4e-aae0-a73aa5165fa9.cfargotunnel.com"
  proxied = true
}

resource "cloudflare_record" "infra-behn-cc_grafana" {
  zone_id = var.behn-cc_zone
  name    = "grafana.infra.${var.behn-cc_domain}"
  type    = "CNAME"
  value   = "4146dfec-cd09-4c4e-aae0-a73aa5165fa9.cfargotunnel.com"
  proxied = true
}

resource "cloudflare_record" "behn-cc_sentry" {
  zone_id = var.behn-cc_zone
  name    = "sentry.${var.behn-cc_domain}"
  type    = "CNAME"
  value   = "4146dfec-cd09-4c4e-aae0-a73aa5165fa9.cfargotunnel.com"
  proxied = true
}

resource "cloudflare_record" "behn-cc_gitlab" {
  zone_id = var.behn-cc_zone
  name    = "gitlab.infra.${var.behn-cc_domain}"
  type    = "CNAME"
  value   = "4146dfec-cd09-4c4e-aae0-a73aa5165fa9.cfargotunnel.com"
  proxied = true
}

resource "cloudflare_record" "infra-behn-cc_vault" {
  zone_id = var.behn-cc_zone
  name    = "vault.infra.${var.behn-cc_domain}"
  type    = "CNAME"
  value   = "3a96704d-de77-460f-a9b1-efedc804f784.cfargotunnel.com"
  proxied = true
}

resource "cloudflare_record" "behn-cc_sso" {
  zone_id = var.behn-cc_zone
  name    = "sso.${var.behn-cc_domain}"
  type    = "CNAME"
  value   = "4146dfec-cd09-4c4e-aae0-a73aa5165fa9.cfargotunnel.com"
  proxied = true
}

resource "cloudflare_record" "behn-cc_www" {
  zone_id = var.behn-cc_zone
  name    = "www.${var.behn-cc_domain}"
  type    = "CNAME"
  value   = "behn.cc"
  proxied = true
}

resource "cloudflare_record" "behn-cc_slackfm" {
  zone_id = var.behn-cc_zone
  name    = "slackfm.${var.behn-cc_domain}"
  type    = "CNAME"
  value   = "73895a8d-32fc-470e-8045-956d62e90106.cfargotunnel.com"
  proxied = true
}

resource "cloudflare_record" "behn-cc_google-mx_primary" {
  zone_id  = var.behn-cc_zone
  name     = var.behn-cc_domain
  type     = "MX"
  value    = "aspmx.l.google.com"
  priority = 1
}

resource "cloudflare_record" "behn-cc_google-mx_alt-1" {
  zone_id  = var.behn-cc_zone
  name     = var.behn-cc_domain
  type     = "MX"
  value    = "alt1.aspmx.l.google.com"
  priority = 5
}

resource "cloudflare_record" "behn-cc_google-mx_alt-2" {
  zone_id  = var.behn-cc_zone
  name     = var.behn-cc_domain
  type     = "MX"
  value    = "alt2.aspmx.l.google.com"
  priority = 5
}

resource "cloudflare_record" "behn-cc_google-mx_alt-3" {
  zone_id  = var.behn-cc_zone
  name     = var.behn-cc_domain
  type     = "MX"
  value    = "alt3.aspmx.l.google.com"
  priority = 10
}

resource "cloudflare_record" "behn-cc_google-mx_alt-4" {
  zone_id  = var.behn-cc_zone
  name     = var.behn-cc_domain
  type     = "MX"
  value    = "alt4.aspmx.l.google.com"
  priority = 10
}

resource "cloudflare_record" "behn-cc_aws-ses_mx_txt" {
  zone_id = var.behn-cc_zone
  name    = var.behn-cc_domain
  type    = "TXT"
  value   = "dX5CcdW1fJdaqT4PyDOU29OpLZOKUqiJfix3Nqg3lLQ="
}

resource "cloudflare_record" "behn-cc_behn-cc_keybase_txt" {
  zone_id = var.behn-cc_zone
  name    = var.behn-cc_domain
  type    = "TXT"
  value   = "keybase-site-verification=Ys2YuR0LxUGWVS5tqHKwzVLjUQgfD-95dDhbizrryR0"
}

resource "cloudflare_record" "behn-cc_google-site-verification_txt" {
  zone_id = var.behn-cc_zone
  name    = var.behn-cc_domain
  type    = "TXT"
  value   = "google-site-verification=LICcN2abTN-TxHNWDbq9FaKPDpRdInL4u6J2UX6VIkE"
}

resource "cloudflare_record" "behn-cc_github-proof_txt" {
  zone_id = var.behn-cc_zone
  name    = var.behn-cc_domain
  type    = "TXT"
  value   = "b684962f53348f42ac32958669bb50"
}

resource "cloudflare_record" "behn-cc_github_pages_challenge_txt" {
  zone_id = var.behn-cc_zone
  name    = var.behn-cc_domain
  type    = "TXT"
  value   = "_github-pages-challenge-waitrosedev.behn.cc"
}