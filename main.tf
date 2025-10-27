resource "aws_instance" "ansible_dev_node" {
  ami           = "ami-0e9e3701ddd593b08"
  instance_type = "t2.small"
  security_groups = [ "EC2-Default-SG" ]
  availability_zone = module.ebs_volumes.bois_az
  root_block_device {
    delete_on_termination = true
  }
  user_data = <<EOF
  #!/bin/bash
  cd /home/ansible/
  git clone git@github.com:TalesNotTails/Ansible.git
  EOF
  tags = {
    Type = "ansible_dev_node"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdb"
  volume_id = module.ebs_volumes.bois_ebs_id
  instance_id = aws_instance.ansible_dev_node.id
  skip_destroy = true
}

module "ebs_volumes" {
  source = "./ebs_vols"
}

module "security_groups" {
  source = "./sec_groups"
}

