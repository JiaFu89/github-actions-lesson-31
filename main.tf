provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "jiafu-sctp-ce11-tfstate"
    key    = "jiafu-tfstate.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "bucket" {
    bucket = "jiafu-sctp-ce11-example-bucket"  
}