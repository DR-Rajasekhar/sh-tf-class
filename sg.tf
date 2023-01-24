resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.testvpc01.id
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "without_dyn_blocks" {
  name        = "testing_dyn_blocks"
  description = "testing_dyn_blocks"
  vpc_id      = aws_vpc.testvpc01.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["10.1.1.100/32"]
  }
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "TCP"
    cidr_blocks = ["10.1.1.100/32"]
  }
  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "TCP"
    cidr_blocks = ["10.1.2.100/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

