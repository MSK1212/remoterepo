resource "aws_instance" "webserver" {
  ami = var.ami
  instance_type = var.instance
  key_name = var.key
  vpc_security_group_ids = [aws_security_group.sg2026.id]
  tags = {
    Name = var.name
  }
}
