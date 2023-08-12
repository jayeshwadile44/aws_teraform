#create the private route table
resource "aws_route_table" "private" { #subnet_id
  vpc_id = aws_vpc.dev_vpc.id
}

#route entry for natgw in private route table
resource "aws_route" "private_natgw" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.gw.id
}

#associate the route table with the private subnets 
resource "aws_route_table_association" "private_A" { #subnet_association_name
  subnet_id      = aws_subnet.private_A.id
  route_table_id = aws_route_table.private.id
}