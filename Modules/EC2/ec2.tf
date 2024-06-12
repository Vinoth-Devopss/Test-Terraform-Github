#Create a new Vinoth-TF prod API -1 EC2 launch configuration..

resource "aws_instance" "Dev-vinoth-TF" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.prod-api_key_name
  vpc_security_group_ids = [var.security_group_id]
  subnet_id     = var.public-subnet-1_id
  associate_public_ip_address = true
  disable_api_termination = true
  
  tags = {
Name = "Dev-vinoth-TF"
}

root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    volume_size           = "20"
    volume_type           = "gp3"
  }

connection {
    type = "ssh"
    user = "administrator"
    password = var.administrator_password
    private_key = file("${path.module}/demo.pem")
    host = self.public_ip    
    } 
}
