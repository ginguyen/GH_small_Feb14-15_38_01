terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "log_bucket" {
  bucket = "my-tf-log-bucket"
  acl    = "log-delivery-write"
  tags = {
    Region    = "us-east-1"
    Demo      = "log-delivery-write"
    Version   = "12"
    yor_trace = "82489499-32c5-40d0-8000-d3fc7b01b5c2"
  }
}