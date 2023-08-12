resource "aws_instance" "pvt_instance" {
    ami = "ami-0f5ee92e2d63afc18"
    instance_type ="t2.micro"
    subnet_id      = aws_subnet.private_A.id
    security_groups = [aws_security_group.my_security_group_public.id]
    associate_public_ip_address = false
    key_name      = "pvt"
    tags = {
        Name = "Privat_instance"
    }
}

# resource "aws_security_group" "my_security_group_public" {
#   name_prefix = "allow_ssh_traffic_"
#   vpc_id = aws_vpc.dev_vpc.id
#   # Rules for SSH (port 22) inbound traffic
#   ingress {
#     description = "SSH from anywhere"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.1.0/24"]  # Allow SSH from public instance public_ip only 
#   }

#       # Rule for outbound internet traffic
#   egress {
#     description = "Allow all outbound traffic"
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

