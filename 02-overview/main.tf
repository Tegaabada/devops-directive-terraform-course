terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0ada6d94f396377f2" # Ubuntu 20.04 LTS // us-east-2
  subnet_id     = "subnet-08a925d2758c8db15"
  instance_type = "t2.micro"
}
