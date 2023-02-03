output "vpc_id_1" {
  value = module.dev_vpc_1.vpc_id
}
output "dev_vpc_1_pub_subnets" {
  value = module.dev_vpc_1.public_subnets_id
}
