
resource "aws_subnet" "subnet1-public" {
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = "10.10.10.0/24"
  availability_zone = "us-west-2b"


  tags = {
    Name = "MyTestVPC-Pub-subnet1"
  }
}
resource "aws_subnet" "subnet2-public" {
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = "10.10.20.0/24"
  availability_zone = "us-west-2b"


  tags = {
    Name = "MyTestVPC-Pub-subnet2"
  }
}
resource "aws_subnet" "subnet3-public" {
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = "10.10.30.0/24"
  availability_zone = "us-west-2a"


  tags = {
    Name = "MyTestVPC-Pub-subnet3"
  }
}