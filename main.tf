provider "aws" {
  region = "us-east-1"
}

# EC2 Instance (using existing security group)
resource "aws_instance" "my_ec2" {
  ami                    = var.ami
  instance_type          = "t3.micro"
  subnet_id              = var.subnet
  key_name               = "ubuntu"
  associate_public_ip_address = true

  vpc_security_group_ids = ["sg-XXXXXXXXXXXXXXX"]  # <-- put your real SG ID here

  tags = {
    Name = "Terraform-EC2"
  }
}
