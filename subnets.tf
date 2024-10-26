resource "aws_subnet" "my_Public_Subnet1" {
	vpc_id = "${aws_vpc.my_VPC.id}"
	cidr_block = "10.50.0.0/18"
	availability_zone = "ap-south-1a"
	tags = {
		name = "Terraform_Public_Subnet1"
	}
}
resource "aws_subnet" "my_Public_Subnet2" {
	vpc_id = "${aws_vpc.my_VPC.id}"
	cidr_block = "10.50.64.0/18"
	availability_zone = "ap-south-1b"
	tags = {
		name = "Terraform_Public_Subnet2"
	}
}
