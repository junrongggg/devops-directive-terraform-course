terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-southeast-1"
}

resource "aws_instance" "Terraform_ec2" {
    ami = "ami-0c2e5288624699cd8"
    instance_type = "t4g.large"
    subnet_id = "subnet-013f2f15031c839c3"

    tags = {
    Name = "Terraform_learning"
  }
}