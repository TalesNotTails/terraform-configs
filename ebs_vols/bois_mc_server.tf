resource "aws_ebs_volume" "bois_mc_vol" {
  availability_zone = "us-east-1a"
  size = 20
  type = "gp3"
  tags = {
    Name = "bois_minecraft_ebs_vol"
  }
}
