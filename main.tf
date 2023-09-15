terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# It takes the AWS cred from the .aws files in my home directory
# Do AWS configure

provider "aws" {
  region = var.region
}

resource "aws_instance" "instance1" {
  ami                     = var.instance_ami
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.securitygroup
  key_name                = var.key_name
  associate_public_ip_address = true
  tags = {
    Name = var.instance_tag
  }
}
