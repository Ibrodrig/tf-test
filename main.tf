## PUT TERRAFORM CLOUD BLOCK HERE!  ##

terraform {

  cloud {
    organization = "Rodri"

    workspaces {
      name = "lesson-11"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.01"
    }
  }
}


# Variable blocks directly within the main.tf. No arguments necessary.
# variable "aws_access_key" {}
# variable "aws_secret_key" {}
variable "region" {}

# provider arguments call on the variables which then call on terraform.tfvars for the values.
provider "aws" {
  # access_key = var.aws_access_key
  # secret_key = var.aws_secret_key
  region = var.region
}

# Add .gitignore file in this directory with the terraform.tfvars

# resource "aws_instance" "tc_instance" {
#   ami           = "ami-0e872aee57663ae2d"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "TC-triggered-instance"
#   }
# }