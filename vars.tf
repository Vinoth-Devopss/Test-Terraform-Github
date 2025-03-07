# VPC

variable "vpc-cidr" {
default = "192.31.0.0/20"
description = "VPC CIDR BLOCK"
type = string
}

variable "vpc-id" {
default = "vpc-0e7ddc6e00fc95239"
description = "Dev VPC ID"
type = string
}

variable "Public_Subnet_1" {
default = "192.31.0.0/24"
description = "Public_Subnet_1"
type = string
}

variable "Public_Subnet_2" {
default = "192.31.1.0/24"
description = "Public_Subnet_2"
type = string
}

variable "Private_Subnet_1" {
default = "192.31.8.0/24"
description = "Private_Subnet_1"
type = string
}

variable "Private_Subnet_2" {
default = "192.31.9.0/24"
description = "Private_Subnet_2"
type = string
}

variable "ssh-location" {
default = "0.0.0.0/0"
description = "SSH variable for bastion host"
type = string
}


# Prod EC2

variable "key_name" {
  description = " credentials keys to connect to ec2 instance"
  default = "Prod-API-Dev-vinoth"
}

variable "instance_type" {
  description = "instance type for ec2"
  default = "t3.micro"
}

variable "security_group" {
  description = "Name of security group"
  default = "sg-003d7d449ac65017a"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default = "Prod-API-Dev-vinoth"
}

variable "ami_id" {
  description = "AMI ID for RHEL Ec2 instance"
  default = "ami-008616ec4a2c6975e"
}

