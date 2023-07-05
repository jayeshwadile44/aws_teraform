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
  access_key = "AKIA3CUBPFFSDS5P22UV"
  secret_key = "m/NOk3CA4LrXLVKF3KSvzpPWtGyEnwqF6AC+LNX9"
}

#aws_ec2_instance

resource "aws_instance" "s1" {
count = 100
ami = "ami-0f5ee92e2d63afc18" # Update with your desired AMI ID
instance_type = "t2.micro" # Update with your desired instance type

tags = {
Name = "Instance-${count.index + 1}"
}
}
