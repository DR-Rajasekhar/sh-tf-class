vpc_name                   = "RRR-DEV"
cidr_block                 = "10.95.0.0/16"
env                        = "Dev"
public_subnet_cidr_blocks  = ["10.95.1.0/24", "10.95.2.0/24", "10.95.3.0/24", "10.95.4.0/24"]
private_subnet_cidr_blocks = ["10.95.10.0/24", "10.95.20.0/24", "10.95.30.0/24", "10.95.40.0/24"]
azs                        = ["us-west-2a", "us-west-2b", "us-west-2c"]
key_name                   = "oregon"
instance_type              = "t2.nano"
# imagename                  = "ami-095413544ce52437d"
region = "us-west-2"
amis = {
  "us-west-2" = "ami-095413544ce52437d"
  "us-east-2" = "ami-017fecd1353bcc96e"
}
