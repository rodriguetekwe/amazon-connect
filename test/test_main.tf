# Configure provider for testing
provider "aws" {
  region = "us-east-1"
}

# Load modules
module "contact_center" {
  source = "./contact_center"
}

module "phone_number" {
  source = "./phone_number"
  connect_instance_id = module.contact_center.connect_instance_id
}

module "contact_flow" {
  source = "./contact_flow"
  connect_instance_id = module.contact_center.connect_instance_id
}

# Test Case 1: Verify Amazon Connect instance creation
resource "aws_connect_instance" "test_connect_instance" {
  name           = "TestConnectInstance"
  instance_alias = "test-connect-instance"
  description    = "Test Amazon Connect instance"
}

# Test Case 2: Verify phone number assignment to Amazon Connect instance
resource "aws_connect_phone_number" "test_connect_phone_number" {
  instance_id  = aws_connect_instance.test_connect_instance.id
  phone_number = "+12025550101"
}

# Test Case 3: Verify contact flow creation
resource "aws_connect_contact_flow" "test_connect_contact_flow" {
  instance_id = aws_connect_instance.test_connect_instance.id
  name        = "TestContactFlow"
  description = "Test contact flow"
  content = <<CONTENT
{
  "Version": "2018-09-07",
  "StartAction": "MyAction",
  "Actions": {
    "MyAction": {
      "Type": "DisconnectParticipant"
    }
  }
}
CONTENT
}
