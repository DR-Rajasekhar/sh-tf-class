resource "aws_instance" "web-1" {
  ami                         = var.imagename
  instance_type               = var.instance_type
  key_name                    = var.key
  subnet_id                   = data.terraform_remote_state.devopsb27-state.outputs.vpc_subnet1
  vpc_security_group_ids      = [data.terraform_remote_state.devopsb27-state.outputs.sg_id]
  associate_public_ip_address = true
  tags = {
    Name       = "Test-Server-1"
    Env        = "Prod"
    Owner      = "Raja"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
       #!/bin/bash
       sudo apt-get update
       sudo apt-get install -y nginx jq unzip
       echo "<h1>Deployed via Terraform on Test-Server-1</h1>" | sudo tee /var/www/html/index.nginx-debian.html
   EOF
}
# resource "aws_instance" "web-2" {
#  ami                         = var.imagename
#  instance_type               = var.instance_type
#  key_name                    = var.key
#  subnet_id                   = data.terraform_remote_state.devopsb27-state.outputs.vpc_subnet2
#  vpc_security_group_ids      = [data.terraform_remote_state.devopsb27-state.outputs.sg_id]
#  associate_public_ip_address = true
#  tags = {
#    Name       = "Test-Server-2"
#    Env        = "Prod"
#    Owner      = "Raja"
#    CostCenter = "ABCD"
#  }
#  user_data = <<-EOF
#        #!/bin/bash
#        sudo apt-get update
#        sudo apt-get install -y nginx jq unzip
#        echo "<h1>Deployed via Terraform on Test-Server-2</h1>" | sudo tee /var/www/html/index.nginx-debian.html
#    EOF
# }


# resource "aws_instance" "web-3" {
#  ami                         = var.imagename
#  instance_type               = var.instance_type
#  key_name                    = var.key
#  subnet_id                   = data.terraform_remote_state.devopsb27-state.outputs.vpc_subnet3
#  vpc_security_group_ids      = [data.terraform_remote_state.devopsb27-state.outputs.sg_id]
#  associate_public_ip_address = true
#  tags = {
#    Name       = "Test-Server-3"
#    Env        = "Prod"
#    Owner      = "Raja"
#    CostCenter = "ABCD"
#  }
#  user_data = <<-EOF
#        #!/bin/bash
#        sudo apt-get update
#        sudo apt-get install -y nginx jq unzip
#        echo "<h1>Deployed via Terraform on Test-Server-3</h1>" | sudo tee /var/www/html/index.nginx-debian.html
#    EOF
# }
