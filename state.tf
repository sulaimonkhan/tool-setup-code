terraform {
  backend "s3" {
    bucket = "terraform-d86"
    key    = "tools/terraform.tfstate"
    region = "us-east-1"
  }    
}