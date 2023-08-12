#aws_subnet

resource "aws_subnet" "public_A" {       #public_non_prod
  vpc_id            = aws_vpc.dev_vpc.id #from_vpc_resource
  cidr_block        = "10.0.1.0/24"     
  availability_zone = "ap-south-1a"
}

resource "aws_subnet" "private_A" {      #private_subnet
  vpc_id            = aws_vpc.dev_vpc.id #from_vpc_resource
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1a"
}