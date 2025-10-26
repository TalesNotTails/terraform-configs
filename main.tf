resource "aws_instance" "ansible_dev_node" {
  ami           = "ami-0e9e3701ddd593b08"
  instance_type = "t2.small"
  security_groups = [ "EC2-Default-SG" ]
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

module "security_groups" {
  source = "./sec_groups"
}

