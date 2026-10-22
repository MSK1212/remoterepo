resource "aws_instance" "webserver" {
  ami = var.ami
  instance_type = var.instance
  key_name = var.key
  vpc_security_group_ids = [  ]
  tags = {
    Name = var.name
  }
}