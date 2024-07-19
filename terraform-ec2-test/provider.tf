terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }
  }

    backend "s3" {
        bucket = "suresh-terraform-remote-state"
        key    = "ec2-module"
        region = "us-east-1"
        dynamodb_table = "remote-locking"
    }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}