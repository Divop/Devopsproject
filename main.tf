provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "dev-vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true

}

resource "aws_instance" "dev-ec2" {
    ami = var.ami
    instance_type = var.type

    tags = var.tags

}

resource "aws_s3_bucket" "dev-bucket01" {
    bucket = var.bucketlist[0]
}

resource "aws_s3_bucket" "dev-bucket03" {
    bucket = var.bucketlist[2]
}


resource "aws_security_group" "dev-secgrp" {
    name = "Allow dev HTTPS"

    ingress {
        from_port = var.httpsport
        to_port = var.httpsport
        protocol = var.tcp
        cidr_blocks = ["0.0.0.0/0"]
    }
 
    egress {
        from_port = 443
        to_port = 443
        protocol = var.tcp
        cidr_blocks = ["0.0.0.0/0"]
    }
}
