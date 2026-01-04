terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "terraformlearnbucket"
    key            = "local-state-demo"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
}


provider "aws" {
    region         = "us-east-1"
}