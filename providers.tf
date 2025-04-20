terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0"
    }
  }
  backend "s3" {
    bucket  = "rocketseat-bielb1b2-state-bucket"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    encrypt = true

    profile = "AdministratorAccess-001348462846"
  }
}

provider "aws" {
  profile = "AdministratorAccess-001348462846"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.state_bucket
  lifecycle {
    prevent_destroy = true
  }
}
