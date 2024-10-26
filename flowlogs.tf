resource "aws_flow_log" "my_VPC_Flow_Logs" {
	log_destination = "${aws_s3_bucket.my-s3-bucket.arn}"
	log_destination_type = "s3"
	traffic_type = "ALL"
	vpc_id = "${aws_vpc.my_VPC.id}"
	depends_on = [
		aws_s3_bucket.my-s3-bucket,
	]
}
