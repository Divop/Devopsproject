Provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "Websever" {
	ami = "0b5eea76982371e91"
	instance type = "t2.micro"
}

resource "aws_S3_bucket" "dino10bucket" {
	bucket = "dino0101"
	acl = "private"
}
