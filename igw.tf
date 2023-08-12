resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.dev_vpc.id   #we need to attach this igw to vpc 
  tags = {
    Name = "Main IGW"
  }
}