# Configure AWS provider
provider aws {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Create VPC
module "vpc" {
  source       = "../Modules/vpc"
  region       = var.region
  project_name = var.project_name
}

# Launch ec2 instance
module "ec2_instance" {
  source = "../Modules/ec2-instance"
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
  #project_name = var.project_name
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_id
  instance_type = var.instance_type
  aws_ami = var.aws_ami

}
