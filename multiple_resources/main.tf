provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "aws_vpc_count" {
    count = 3
    cidr_block = format("172.%d.0.0/16", 16 + count.index)
}

resource "aws_vpc" "aws_vpc_for_each" {
    for_each = toset(["16", "17", "18"])
    cidr_block = "172.${each.value}.0.0/16"
}

output "cidr_block_splat" {
    value = aws_vpc.aws_vpc_count[*].cidr_block
}

output "cidr_block_for_loop" {
    value = [
        for vpc in aws_vpc.aws_vpc_count: 
            vpc.cidr_block
    ]
}