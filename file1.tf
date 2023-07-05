terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#authentication_through_aws

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3CUBPFFSHKQNEIEH"
  secret_key = "g5rZbiLUy2zj/zdt3fjhdt+5BuRaJhWdxufQfjkC"
}

#aws_ec2_instance

resource "aws_instance" "s1" {
count = 31
ami = "ami-0f5ee92e2d63afc18" # Update with your desired AMI ID
instance_type = "t2.micro" # Update with your desired instance type

tags = {
Name = "Instance-${count.index + 1}"
}
}

#aws_vpc

resource "aws_vpc" "dev_vpc" {
  cidr_block = "10.1.0.0/16"
}

#aws_subnet

resource "aws_subnet" "dev_vpc_subnet_1" {
  vpc_id = aws_vpc.dev_vpc.id #from_line_32
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
}
