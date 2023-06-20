
module "test" {
  source = "../"

  api_name                = "my-api"
  certificate_arn         = "fake-aws-arn"
  domain_name             = "example.com"
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 2.0.0, < 4.0.0"
    }
  }
}
