terraform {
  required_version = ">= 0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.16"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "teste01"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-rubens"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Manageby    = "Terraform"
    Owner       = "Rubens Rabelo"
    UpdateAt    = "2023-11-02"
  }
}