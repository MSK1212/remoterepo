resource "aws_security_group" "sg2026" {
  name = var.sg
  description = "Allow HTTP and SSH"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [var.cidr]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [var.cidr]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "ICMP"
    cidr_blocks = [var.cidr]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [var.cidr]
  }
}