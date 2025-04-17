variable "ami" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for the EC2 instances"
  type        = list(string)
}
