resource "aws_security_group" "allow_all" {
  name        = "DevOpsB27-SH-PublicInstanceSG-KKI5N8SWXT7G"
  description = "Enable SSH access via port 22"
  vpc_id      = aws_vpc.testvpc01.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "PublicSG"

  }
}
