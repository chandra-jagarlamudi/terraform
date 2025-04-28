# Provider source and version being used
# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }

# Azure Provider source and version being used
# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "=3.0.0"
#     }
#   }
# }

provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "MyFirstTerraformEc2" {
  ami           = "ami-05572e392e80aee89"
  instance_type = "t2.micro"

  tags = {
    Name = "Learning Terraform"
    Lob = "Card Tech"
  }
}