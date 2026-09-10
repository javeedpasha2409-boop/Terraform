terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "javeed-terraform-demo-2026"

  tags = {
    Name        = "Terraform Demo Bucket"
    Environment = "Dev"
  }
}
