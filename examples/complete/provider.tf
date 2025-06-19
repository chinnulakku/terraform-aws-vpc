terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }

  backend "s3" {
    bucket = "sudhaaru-remote-state"
    key = "foreach"
    region = "us-east-1"
    dynamodb_table = "sudhaaru-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}