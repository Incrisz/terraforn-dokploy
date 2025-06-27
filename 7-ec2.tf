


resource "aws_instance" "ec2-worker1" {
    ami = var.ami_id 
    instance_type = "t2.medium"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [ aws_security_group.sg_custom.id ]
    # key_name = "miseuwest2ipalacaprover"

    user_data = <<-EOF
        #!/bin/bash
        sudo apt update -y
        curl -fsSL https://raw.githubusercontent.com/Incrisz/docker-swarm/main/install-ssh.sh | bash
        curl -sSL https://dokploy.com/install.sh | sh

    EOF

    # Tag the instance as "ec2-worker1" to differentiate it from other instances.
    tags = {
        "Name" = "ec2-worker1"
    }
}

output "user_root-pass_1ncrease-server_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ec2-worker1.public_ip
}



