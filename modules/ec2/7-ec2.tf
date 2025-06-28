resource "aws_instance" "web" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  # key_name                    = var.key_pair_name
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    curl -fsSL https://raw.githubusercontent.com/Incrisz/docker-swarm/main/install-ssh.sh | bash
    # curl -sSL https://dokploy.com/install.sh | sh

EOF

  tags = {
    Name = "web-instance"
  }
}



