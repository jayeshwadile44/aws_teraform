# aws_teraform

AWS network infrastructure code includes detail resources which are part of critical VPC network.

Each .tf file defines a specific resource or set of related AWS resources:

File Name	Description
main.tf	Entry point for Terraform configuration and provider setup
vpc_tf	Defines the VPC resource
subnet_tf	Creates public and private subnets
igw.tf	Provisions the Internet Gateway for public subnet connectivity
nat.tf	Deploys the NAT Gateway to allow private subnet outbound traffic
rt_pub.tf	Sets up the public route table and associations
rt_private.tf	Configures the private route table and associations
ec2_tf	Launches EC2 instances within the subnets
file1.tf	(Optional) Additional custom configurations or variables

🚀 Features
Fully customizable VPC setup (CIDR, region, etc.)

Public and private subnets across multiple AZs

NAT Gateway setup for secure private subnet traffic

Route table associations

Internet Gateway for public access

Sample EC2 provisioning in a public subnet

📌 Prerequisites
Terraform v1.0 or later

AWS CLI configured with credentials

IAM role/user with sufficient privileges (VPC, EC2, etc.)

🚦 Usage
bash
Copy
Edit
terraform init
terraform plan
terraform apply
