# Configure AWS provider
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "web" {
  ami       = var.aws_ami
  instance_type = var.instance_type
  //vpc_id = var.vpc_id
  subnet_id = var.subnet_id
  //security_groups = 
  tags = {
    Name = "wordpress"
  }
}

