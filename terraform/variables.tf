variable "cloudflare_api_token" {
  description = "Cloudflare API token for DNS management"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare zone ID for vulnes.is"
  type        = string
  default     = "4066f0b161bc71744adb52fbd584b691"
}
