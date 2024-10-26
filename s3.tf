resource "aws_s3_bucket" "my-s3-bucket" {
	bucket = "my-devops-terraform-bucket"
	acl = "private"
	tags = {
		name = "Terraform_S3_Bucket"
		Environment = "Production"
	}
}
