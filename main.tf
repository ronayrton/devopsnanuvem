terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.93"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = arn:aws:iam::203918854279:role/Devops-na-nuvem-a887c517-715c-458f-b4d9-d62efeaa38a0
  }
}

