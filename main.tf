resource "aws_s3_bucket" "s3_bucket" {
    bucket = "rocketseat-bielb1b2-bucket-iac-${terraform.workspace}"

    tags = {
      Name = "Primeiro Bucket"
      Iac = true,
      context = "${terraform.workspace}"
    }
}