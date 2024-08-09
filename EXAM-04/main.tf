provider "aws" {
  alias = "dev"
  region = var.location
  profile = "aws-b1-d1"
}
resource "aws_vpc" "main_dev" {
  provider = aws.dev   
  cidr_block = var.cidr
  tags = {
    Name = "vpc_dev" 
    owner = "Punnoose"
    dep = "hr"
    env = var.env
  }
}
resource "aws_subnet" "Subnets" {
 count = "4"
 vpc_id = aws_vpc.main_dev.id
 cidr_block = var.subnet_cidr[count.index]
 tags = {
  Name = var.sub_names[count.index]
  env = var.env
 }
}