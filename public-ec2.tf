resource "aws_instance" "public_servers" {
  #count             = length(var.public_subnet_cidr_blocks)
  #count                       = 3
  count = var.env == "Dev" ? 1 : 2
  # ami                         = var.imagename
  ami                         = lookup(var.amis, var.region)
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = element(aws_subnet.public-subnets.*.id, count.index)
  vpc_security_group_ids      = [aws_security_group.allow_all.id]
  associate_public_ip_address = true
  tags = {
    Name       = "${var.vpc_name}-PublicServer-${count.index + 1}"
    Env        = "Prod"
    Owner      = "Raja"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
      #!/bin/bash
      sudo apt-get update
      sudo apt-get install -y nginx jq unzip
      echo "<h1>Deployed via Terraform and the server name is ${local.vpc_name_lower}-Public-Server-${count.index + 1}</h1>" | sudo tee /var/www/html/index.html
  EOF


}
