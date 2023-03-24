terraform {
  required_version = ">= 0.14.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket        = "my-state-bucket-8899990"
  force_destroy = true
}
