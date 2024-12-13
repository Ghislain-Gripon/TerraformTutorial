provider "aws" {
    profile = "default"
    region = "eu-west-3"
}

resource "aws_s3_bucket" "test2" {
    bucket = "terraform-tutorial-bucket-v2-ghis-7456"
    force_destroy = true
}

resource "aws_s3_object" "txt" {
  bucket = aws_s3_bucket.test2.bucket
  key = "test.txt"
  content = abspath("/home/ghislain-gripon/Documents/Projects/test.txt")
}

resource "aws_instance" "app_server" {
  ami = ""
  instance_type = "t2.micro"
}