terraform {
  required_version = ">= 1.10" # S3 backend native locking (use_lockfile)

  # Shared state, the same bucket and convention as the other Vulnesis roots.
  backend "s3" {
    bucket                      = "vulnesis-terraform-state"
    key                         = "ietf-crit-spec/terraform.tfstate"
    region                      = "auto"
    endpoints                   = { s3 = "https://e302589106b4c4287aebe65763eb4f80.r2.cloudflarestorage.com" }
    use_path_style              = true
    use_lockfile                = true
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_s3_checksum            = true
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
