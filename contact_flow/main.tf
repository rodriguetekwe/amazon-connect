resource "aws_connect_contact_flow" "connect_contact_flow" {
  instance_id = var.connect_instance_id
  name        = var.contact_flow_name
  description = var.contact_flow_description
  content     = var.contact_flow_content
}

output "contact_flow_id" {
  value = aws_connect_contact_flow.connect_contact_flow.id
}
