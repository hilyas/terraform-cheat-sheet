provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "ltthw-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "ltthw-vpc"
    }
}

resource "aws_subnet" "ltthw-vpc-subnet" {
    vpc_id = "${aws_vpc.ltthw-vpc.id}"
    cidr_block = "${aws_vpc.ltthw-vpc.cidr_block}"
}

resource "local_file" "local-file" {
    filename = "${path.module}/local_file.txt"
    content = "This is a local file"
    depends_on = [aws_vpc.ltthw-vpc]
}