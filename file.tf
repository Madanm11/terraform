provider "aws" {
  alias = "s3"
region = "ap-southeast-2"
}
resource "aws_s3_bucket" "bucket" {
bucket = "bucciut"
acl = "private"
}
