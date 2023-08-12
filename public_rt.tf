#create the public route table
resource "aws_route_table" "public" { #subnet_id
  vpc_id = aws_vpc.dev_vpc.id
}

#route table entry for igw in public route table
resource "aws_route" "public_igw" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}

#associate the route table with the public subnets 
resource "aws_route_table_association" "public_A" { #subnet_association_name
  subnet_id      = aws_subnet.public_A.id         #subnet_id_A
  route_table_id = aws_route_table.public.id
}