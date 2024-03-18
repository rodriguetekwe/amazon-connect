resource "aws_connect_instance" "connect_instance" {
  name            = var.instance_name
  instance_alias  = var.instance_alias
  description     = var.instance_description
}

output "connect_instance_id" {
  value = aws_connect_instance.connect_instance.id
}
