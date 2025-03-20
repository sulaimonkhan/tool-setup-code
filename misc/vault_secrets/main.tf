terraform {
  backend "s3" {
    bucket = "terraform-d86"
    key    = "vault-secrets/terraform.tfstate"
    region = "us-east-1"
  }    
}

provider "vault" {
  address = "http://vault-internal.sulaimondevopsb72.online:8200"
  token   = var.vault_token
  skip_tls_verify = true    
}

variable "vault_token" {}

resource "vault_generic_secret" "roboshop-dev" {
  path = "roboshop-dev/frontend"

  data_json = <<EOT
{
  "foo":   "bar",
  "pizza": "cheese"
}
EOT
}