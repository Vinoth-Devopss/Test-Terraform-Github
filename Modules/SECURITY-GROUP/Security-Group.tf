# Add EC2 aws_security_group.
resource "aws_security_group" "Dev-vinoth" {
  name        = "Dev-vinoth-SG"
  description = "Enable Dev-vinoth-required ports"
  vpc_id = var.vpc_id

  ingress {
  description      = "ssh"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
  description      = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   ingress {
   description      = "https"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
  description      = "Postgresql"
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
tags   = {
Name = "Dev-vinoth-SG"
}
}
