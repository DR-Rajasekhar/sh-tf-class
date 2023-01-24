locals {
  ingress = [80, 443, 22, 3389, 3306, 1433, 5000, 5001, 5002]
  egress  = [80, 443, 8080, 8443]
}
resource "aws_security_group" "with_dyn_blocks" {
  name        = "with_dyn_blocks"
  description = "with_dyn_blocks"
  vpc_id      = aws_vpc.testvpc01.id


  dynamic "ingress" {
    for_each = local.ingress
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  dynamic "egress" {
    for_each = local.egress
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
