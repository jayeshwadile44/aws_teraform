
#define_our_vpc
locals {
    vpc_id = "aws_vpc.dev_vpc.id"
}


#caeate elastic_ip resource
resource "aws_eip" "nat_eip" {
    vpc = true
}

#careate nat gateway and associate it with elastic_ip
resource "aws_nat_gateway" "gw" {  
    allocation_id = aws_eip.nat_eip.id
    #vpc_id = "aws_vpc.dev_vpc.id"      # my_vpc_id
    subnet_id = aws_subnet.private_A.id   # fill_subnet_here
    tags = {
         Name = "NAT Gateway" 
         }        
}
