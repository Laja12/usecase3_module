provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
}

module "ec2" {
  source = "./modules/ec2"
  ami = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  subnet_ids = [module.vpc.public_subnet_ids[0], module.vpc.public_subnet_ids[1]]
}


module "security_groups" {
  source = "./modules/security_groups"
  web_sg_name = "web-sg"
  vpc_id = module.vpc.vpc_id
}
