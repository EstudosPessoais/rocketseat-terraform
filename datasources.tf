data "aws_s3_bucket" "bucket" {
  bucket = "${var.org_name}-bielb1b2-bucket-iac-${terraform.workspace}"
}
