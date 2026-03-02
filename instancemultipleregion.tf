provider "aws"{
alias = "ap-southeast-2"
region = "ap-southeast-2"
}
provider "aws" {
alias = "us-east-1"
region = "us-east-1"
}
resource "aws_instance" "region1" {
ami = "ami-0a11f7293cd9a562e"
instance_type = "t3.micro"
key_name = "devops"
provider = "aws.ap-southeast-2"
}
resource "aws_instance" "region2" {
  ami = "ami-0f3caa1cf4417e51b"
  instance_type = "t3.micro"
  key_name = "devops"
  provider = "aws.us-east-1"
}
