provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "my-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "my-vpc"
    }
}

resource "aws_subnet" "my-vpc-subnet" {
    vpc_id = "${aws_vpc.my-vpc.id}"
    cidr_block = "${aws_vpc.my-vpc.cidr_block}"
}

resource "local_file" "local-file" {
    filename = "${path.module}/local_file.txt"
    content = "This is a local file"
    depends_on = [aws_vpc.my-vpc]
}