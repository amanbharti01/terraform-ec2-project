provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami                    = var.ami
  instance_type          = "t3.micro"
  subnet_id              = var.subnet
  key_name               = "ubuntu"
  associate_public_ip_address = true

  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
#!/bin/bash
sudo dnf install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
echo "<h1>Deployed using Terraform 🚀</h1>" > /usr/share/nginx/html/index.html
EOF

  tags = {
    Name = "Terraform-EC2"
  }
}
