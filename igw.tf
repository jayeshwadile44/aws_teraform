resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.dev_vpc.id
  tags = {
    Name = "Main IGW"
  }
}
