# usecase3_module
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./modules/ec2 | n/a |
| <a name="module_rds"></a> [rds](#module\_rds) | ./modules/rds | n/a |
| <a name="module_sg-group"></a> [sg-group](#module\_sg-group) | ./modules/security_groups | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI ID for the EC2 instances | `string` | `"ami-04aa00acb1165b32a"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region | `string` | `"us-east-1"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 instance type | `string` | `"t2.micro"` | no |
| <a name="input_private_subnet_cidr_1"></a> [private\_subnet\_cidr\_1](#input\_private\_subnet\_cidr\_1) | CIDR block for the first private subnet | `string` | `"10.0.3.0/24"` | no |
| <a name="input_private_subnet_cidr_2"></a> [private\_subnet\_cidr\_2](#input\_private\_subnet\_cidr\_2) | CIDR block for the second private subnet | `string` | `"10.0.4.0/24"` | no |
| <a name="input_public_subnet_cidr_1"></a> [public\_subnet\_cidr\_1](#input\_public\_subnet\_cidr\_1) | CIDR block for the first public subnet | `string` | `"10.0.1.0/24"` | no |
| <a name="input_public_subnet_cidr_2"></a> [public\_subnet\_cidr\_2](#input\_public\_subnet\_cidr\_2) | CIDR block for the second public subnet | `string` | `"10.0.2.0/24"` | no |
| <a name="input_rds_instance_class"></a> [rds\_instance\_class](#input\_rds\_instance\_class) | The instance class for the RDS MySQL database | `string` | `"db.t3.micro"` | no |
| <a name="input_rds_password"></a> [rds\_password](#input\_rds\_password) | The password for the RDS database | `string` | `"Myrds123"` | no |
| <a name="input_rds_username"></a> [rds\_username](#input\_rds\_username) | The username for the RDS database | `string` | `"Myrds1"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block for the VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_sg_id"></a> [db\_sg\_id](#output\_db\_sg\_id) | The ID of the database security group |
| <a name="output_db_subnet_group_name"></a> [db\_subnet\_group\_name](#output\_db\_subnet\_group\_name) | The name of the DB subnet group |
| <a name="output_internet_gateway_id"></a> [internet\_gateway\_id](#output\_internet\_gateway\_id) | The ID of the Internet Gateway |
| <a name="output_nat_gateway_id"></a> [nat\_gateway\_id](#output\_nat\_gateway\_id) | The ID of the NAT Gateway |
| <a name="output_private_subnet_1_id"></a> [private\_subnet\_1\_id](#output\_private\_subnet\_1\_id) | The ID of private subnet 1 |
| <a name="output_private_subnet_2_id"></a> [private\_subnet\_2\_id](#output\_private\_subnet\_2\_id) | The ID of private subnet 2 |
| <a name="output_public_subnet_1_id"></a> [public\_subnet\_1\_id](#output\_public\_subnet\_1\_id) | The ID of public subnet 1 |
| <a name="output_public_subnet_2_id"></a> [public\_subnet\_2\_id](#output\_public\_subnet\_2\_id) | The ID of public subnet 2 |
| <a name="output_rds_instance_id"></a> [rds\_instance\_id](#output\_rds\_instance\_id) | The ID of the RDS instance |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
| <a name="output_web_server_1_id"></a> [web\_server\_1\_id](#output\_web\_server\_1\_id) | The ID of Web Server 1 |
| <a name="output_web_server_2_id"></a> [web\_server\_2\_id](#output\_web\_server\_2\_id) | The ID of Web Server 2 |
| <a name="output_web_sg_id"></a> [web\_sg\_id](#output\_web\_sg\_id) | The ID of the web security group |
<!-- END_TF_DOCS -->