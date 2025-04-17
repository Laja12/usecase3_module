output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_1_id" {
  description = "The ID of public subnet 1"
  value       = module.vpc.public_subnet_1_id
}

output "public_subnet_2_id" {
  description = "The ID of public subnet 2"
  value       = module.vpc.public_subnet_2_id
}

output "private_subnet_1_id" {
  description = "The ID of private subnet 1"
  value       = module.vpc.private_subnet_1_id
}

output "private_subnet_2_id" {
  description = "The ID of private subnet 2"
  value       = module.vpc.private_subnet_2_id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.internet_gateway_id
}

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = module.vpc.nat_gateway_id
}

output "web_sg_id" {
  description = "The ID of the web security group"
  value       = module.sg-group.web_sg_id
}

output "db_sg_id" {
  description = "The ID of the database security group"
  value       = module.sg-group.db_sg_id
}

output "web_server_1_id" {
  description = "The ID of Web Server 1"
  value       = module.ec2.web_server_1_id
}

output "web_server_2_id" {
  description = "The ID of Web Server 2"
  value       = module.ec2.web_server_2_id
}

output "rds_instance_id" {
  description = "The ID of the RDS instance"
  value       = module.rds.rds_instance_id
}

output "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  value       = module.rds.db_subnet_group_name
}
