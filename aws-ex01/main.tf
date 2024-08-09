provider "aws" {
  region = "us-east-1"
  profile = "aws-b1-d1"
}
resource "aws_vpc" "main" {
  cidr_block = "10.20.0.0/16" 
  tags = {
    name = "vpc05"
    owner = "Punnoose"
    dep = "hr"
    env = var.env
  }
}
