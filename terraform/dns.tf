# crit.vulnes.is — CRIT spec docs + in-browser validator
#
# Hosted on GitHub Pages (Vulnesis/ietf-crit-spec). The Pages site
# carries a CNAME file pointing at this hostname; this record points
# back at vulnesis.github.io to complete the binding.
#
# Unproxied so GitHub Pages can issue + serve its own TLS cert.
# Proxying through Cloudflare requires Universal SSL coordination
# with the Pages cert that we don't currently have.
resource "cloudflare_dns_record" "crit_docs" {
  zone_id = var.cloudflare_zone_id
  name    = "crit"
  type    = "CNAME"
  content = "vulnesis.github.io"
  proxied = false
  ttl     = 300
}
