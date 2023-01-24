resource "aws_route_table" "terraform-public" {
  vpc_id = aws_vpc.testvpc01.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.testvpc01.id
  }
  tags = {
    Name = "${local.vpc_name_lower}-Public-RT"
  }
}
resource "aws_route_table" "terraform-private" {
  vpc_id = aws_vpc.testvpc01.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw.id
  }
  tags = {
    Name = "${local.vpc_name_lower}-Private-RT"
  }
}
resource "aws_route_table_association" "public_subnets" {
  # count          = 3
  count          = length(var.public_subnet_cidr_blocks)
  subnet_id      = element(aws_subnet.public-subnets.*.id, count.index) # splat syntax
  route_table_id = aws_route_table.terraform-public.id
}


resource "aws_route_table_association" "private_subnets" {
  # count          = 3
  count          = length(var.private_subnet_cidr_blocks)
  subnet_id      = element(aws_subnet.private-subnets.*.id, count.index)
  route_table_id = aws_route_table.terraform-private.id
}
