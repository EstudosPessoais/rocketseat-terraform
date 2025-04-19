data "aws_s3_bucket" "bucket" {
    bucket = "rocketseat-bielb1b2-bucket-iac-${terraform.workspace}"
}