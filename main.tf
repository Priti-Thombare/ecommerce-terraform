terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "ecommerce_server" {
  ami           = "ami-0c1ac8a41498c1a9c"
  instance_type = "t3.micro"

  tags = {
    Name = "Ecommerce-Server"
  }
}