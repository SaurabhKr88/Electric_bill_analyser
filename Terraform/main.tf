provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  description = "AWS region where the EC2 instance will be created."
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance."
  type        = string
  default     = "ami-0296bce20908d4ab5"
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}



variable "github_repo_url" {
  description = "Public GitHub repository URL for this project."
  type        = string
  default     = "https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH into the instance. Replace with your public IP for better security."
  type        = string
  default     = "0.0.0.0/0"
}

data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "app" {
  name        = "electricity-bill-analyser-sg"
  description = "Allow HTTP and SSH access"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "electricity-bill-analyser-sg"
    Project = "electricity-bill-analyser"
  }
}

resource "aws_instance" "app" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name != "" ? var.key_name : null
  vpc_security_group_ids = [aws_security_group.app.id]

  user_data = <<-EOF
    #!/bin/bash
    set -eux

    if command -v yum >/dev/null 2>&1; then
      yum update -y
      yum install -y docker git
      systemctl enable docker
      systemctl start docker
    elif command -v apt-get >/dev/null 2>&1; then
      apt-get update -y
      apt-get install -y docker.io git
      systemctl enable docker
      systemctl start docker
    fi

    rm -rf /opt/electricity-bill-analyser
    git clone ${var.github_repo_url} /opt/electricity-bill-analyser
    cd /opt/electricity-bill-analyser

    docker build -t electricity-bill-analyser -f dockerfile .
    docker rm -f electricity-bill-analyser || true
    docker run -d \
      --name electricity-bill-analyser \
      --restart unless-stopped \
      -p 80:80 \
      electricity-bill-analyser
  EOF

  tags = {
    Name    = "electricity-bill-analyser"
    Project = "electricity-bill-analyser"
  }
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance."
  value       = aws_instance.app.public_ip
}

output "app_url" {
  description = "URL to open the deployed app."
  value       = "http://${aws_instance.app.public_ip}"
}
