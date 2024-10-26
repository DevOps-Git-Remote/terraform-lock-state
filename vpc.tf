resource "aws_vpc" "my_VPC" {
	cidr_block = "10.50.0.0/16"
	enable_dns_hostnames = true
	tags = {
		name = "Terraform_VPC"
		owner = "DevOps-Studies"
		environment = "Production"
	}
	depends_on = [
		aws_s3_bucket.my-s3-bucket,
	]
}
resource "aws_internet_gateway" "my_VPC_IGW" {
	vpc_id = "${aws_vpc.my_VPC.id}"
	tags = {
		name = "Terraform_IGW"
	}
}
