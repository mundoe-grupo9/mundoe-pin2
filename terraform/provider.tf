terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }

  backend "s3" {
    bucket         = "grupo9-terraform-test"
    key            = "terraform/state"
    region         = "us-east-1"
    encrypt        = true
  }

  # backend "pg" {
  #   conn_str = "postgres://PGUSER:PGPASSWORD@PGURL/PGDB -"
  # }

}

provider "aws" {
  region = "us-east-1"
}