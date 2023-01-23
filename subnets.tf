resource "aws_subnet" "subnet1-public" {
 vpc_id            = aws_vpc.testvpc01.id
 cidr_block        = var.public_subnet1_cidr
 availability_zone = "us-west-2a"


 tags = {
   Name = "${var.vpc_name}-Public-Subnet-1"
   Owner = "DevOpsB27"
 }
}


resource "aws_subnet" "subnet2-public" {
 vpc_id            = aws_vpc.testvpc01.id
 cidr_block        = var.public_subnet2_cidr
 availability_zone = "us-west-2b"


 tags = {
   Name = "${var.vpc_name}-Public-Subnet-2"
   Owner = "DevOpsB27"
 }
}


resource "aws_subnet" "subnet3-public" {
 vpc_id            = aws_vpc.testvpc01.id
 cidr_block        = var.public_subnet3_cidr
 availability_zone = "us-west-2c"


 tags = {
   Name = "${var.vpc_name}-Public-Subnet-3"
   Owner = "DevOpsB27"
 }


}
