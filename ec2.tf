
resource "aws_instance" "web-1" {
  ami                         = "ami-095413544ce52437d"
  availability_zone           = "us-west-2b"
  instance_type               = "t2.micro"
  key_name                    = "oregon"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    App  = "Production"
    Env  = "Prod"
    Name = "WebServer-1"
    Team = "JavaAppTeam"
  }
}

resource "aws_instance" "web-2" {
  ami                         = "ami-095413544ce52437d"
  availability_zone           = "us-west-2b"
  instance_type               = "t2.micro"
  key_name                    = "oregon"
  subnet_id                   = aws_subnet.subnet2-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    App  = "Production"
    Env  = "Prod"
    Name = "WebServer-2"
    Team = "JavaAppTeam"
  }
}
resource "aws_instance" "web-3" {
  ami                         = "ami-095413544ce52437d"  
  instance_type               = "t2.micro"
  key_name                    = "oregon"
  subnet_id                   = aws_subnet.subnet3-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    App  = "Production"
    Env  = "Prod"
    Name = "WebServer-3"
    Team = "JavaAppTeam"
  }
}