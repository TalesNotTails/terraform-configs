servers = {
  babe_mc_server = {
    inst_ami       = "ami-0e9e3701ddd593b08"
    inst_type = "t3a.small"
    vol_size      = 10
    vol_type  = "gp3"
    vol_az    = "us-east-1a"
  },
  discord_mc_server = {
    inst_ami       = "ami-0e9e3701ddd593b08"
    inst_type  = "t3a.medium"
    vol_size      = 10
    vol_type  = "gp3"
    vol_az    = "us-east-1a"
  }
}
