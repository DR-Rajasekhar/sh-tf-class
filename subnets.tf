# creating public subnets
resource "aws_subnet" "public-subnets" {
  # count             = 3
  count             = length(var.public_subnet_cidr_blocks)
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = element(var.public_subnet_cidr_blocks, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name  = "${local.vpc_name_lower}-Public-Subnet-${count.index + 1}"
    Owner = "DevOpsB27"
  }
}


#creating private subnets
resource "aws_subnet" "private-subnets" {
  # count             = 3
  count             = length(var.private_subnet_cidr_blocks)
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = element(var.private_subnet_cidr_blocks, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name  = "${local.vpc_name_lower}-Private-Subnet-${count.index + 1}"
    Owner = "DevOpsB27"
  }
}
