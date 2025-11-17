resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = element(var.subnet_ids, 0)
  vpc_security_group_ids = var.security_group_ids
  key_name               = var.key_name
  tags = merge(var.tags, { Name = "${var.name}-instance" })
}
