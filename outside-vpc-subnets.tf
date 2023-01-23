# data "aws_vpc" "AWS_Default" {
#   id = "vpc-0fd5db7fd44df4641"
# }
# data "aws_route_table" "AWS_Default-rt" {
#   route_table_id = "rtb-09e8fa39b3a1591c8"
#   vpc_id         = data.aws_vpc.AWS_Default.id
# }
# resource "aws_subnet" "default-subnet1-public" {
#   vpc_id            = data.aws_vpc.AWS_Default.id
#   cidr_block        = "172.31.64.0/24"
#   availability_zone = "us-west-2a"
#   tags = {
#     Name = "AWSB27-Public-Subnet-1"
#   }
# }
# resource "aws_route_table_association" "default-subnet1-public" {
#   subnet_id      = aws_subnet.default-subnet1-public.id
#   route_table_id = data.aws_route_table.AWS_Default-rt.id
# }

