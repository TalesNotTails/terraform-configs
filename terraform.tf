terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.2.0"
    }
  } 
  backend "s3" {
    bucket = "tf-rb-cs"
    key = "state/terraform.state"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
} 
