terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  default_tags {
    tags = {
      Owner   = "System Testing Team"
      Purpose = "Run automated tests"
    }
  }
  region = "us-east-1"
}

resource "aws_s3_bucket" "log_bucket" {
  bucket = "my-tf-log-bucket"
  acl = "log-delivery-write"
  tags = {
    Demo = "log-delivery-write"
  }
}