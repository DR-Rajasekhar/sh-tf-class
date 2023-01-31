resource "aws_vpc" "testvpc01" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "MyTestVPC"
  }
}
resource "aws_internet_gateway" "testvpc01" {
  vpc_id = aws_vpc.testvpc01.id
  tags = {
    Name = "MyTestVPC-IGW"
  }
}
