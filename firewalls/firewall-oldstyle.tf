resource "aws_security_group" "terraform-firewall-old-style" {
  name        = "terraform-firewall-old-style"
  description = "Security group managed by Terraform Old Syntax"

  tags = {
    Name = "terraform-firewall-old-style"
  }

  ingress {
    description       = "HTTP rule"
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  }

  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  }

}