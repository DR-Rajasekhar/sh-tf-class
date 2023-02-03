# module "dev_route53_1" {
#   source     = "../modules/route53"
#   domainname = "awsrajadevops.in"
#   nlb_id     = module.dev_elb_1.elb_id
#   dns_name   = module.dev_elb_1.elb_dns_name
#   zone_id    = module.dev_elb_1.elb_zone_id
#   recordname = "devopsb27"
# }