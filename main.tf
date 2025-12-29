module "ebs_volumes" {
  source = "./aws_modules/storage"

  servers = var.servers
}

module "network" {
  source        = "./aws_modules/network"
  vpcs          = var.vpcs
  subnets       = var.subnets
  sec_groups    = var.sec_groups
  ingress_rules  = var.ingress_rules
  egress_rules  = var.egress_rules
}
