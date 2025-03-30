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
  region = var.assume_role.region # The region to deploy the resources in.
  
  assume_role {
    role_arn = var.assume_role.role_arn # The ARN of the role to assume.
  }
  
  default_tags {
    tags = var.tags # This is a map of tags to assign to resources.
 }
}

