terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.30"
    }
  }
  cloud {
    organization = "jacopen-test21"

    workspaces {
      name = "aws-infra"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-1"
}

resource "aws_instance" "test_server" {
  ami           = "ami-0f36dcfcc94112ea1"
  instance_type = "t2.micro"

  tags = {
    Name = "TestInstance"
  }
}
