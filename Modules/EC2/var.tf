# EC2

variable "ami_id" {
  default = "ami-008616ec4a2c6975e"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "prod-api_key_name" {
  default = "Prod-API-Dev-vinoth"
}

variable "vpc_id" {
  type = string
}

variable "security_group_id" {
  type = string
}

variable "public-subnet-1_id" {
  type = string
}

variable "public-subnet-2_id" {
  type = string
}
