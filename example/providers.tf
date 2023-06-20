
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      managed_by = "terraform"
      workspace  = terraform.workspace
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_token
}
