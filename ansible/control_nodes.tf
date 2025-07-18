resource "aws_instance" "ansible_ctrl_node" {
  ami           = "ami-0441a74d496e1ca07"
  instance_type = "t2.micro"
  security_groups = [ "EC2-Default-SG" ]
}
