#terraform block
terraform {
 required_version = "~> 1.9.5"
 required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.63.0"
    }
  }
}

#provider block
provider "aws" {
    region = "us-east-1"
    profile = "default"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0583d8c7a9c35822c" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
