resource "aws_connect_phone_number" "connect_phone_number" {
  instance_id = var.connect_instance_id
  phone_number = var.phone_number
}

output "phone_number" {
  value = aws_connect_phone_number.connect_phone_number.phone_number
}
