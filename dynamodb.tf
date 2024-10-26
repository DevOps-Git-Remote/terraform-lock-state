resource "aws_dynamodb_table" "my_DynamoDB_State_Lock" {
	name = "my_Terraform_State_Lock"
	hash_key = "LockID"
	read_capacity = 20
	write_capacity = 20
	attribute {
		name = "LockID"
		type = "S"
	}
	tags = {
		Name = "Dynamo DB for Terraform State Lock Table"
	}
}
