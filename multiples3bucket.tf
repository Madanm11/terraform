provider "aws" {
  alias  = "multiples3"
  region = "ap-southeast-2"
}
variable "s3_bucketnames" {
  type = list(string)
  default = [
    "biscuites112",
    "faaahhhhh12",
    "maaadddddda123"
  ]
}
resource "aws_s3_bucket" "multiplebucket" {
  count  = length(var.s3_bucketnames)
  bucket = var.s3_bucketnames[count.index]
  acl    = "private"
}

