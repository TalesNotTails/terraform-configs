module "ebs_volumes" {
  source = "./aws_modules/storage"

  mc_servers = var.servers
}
