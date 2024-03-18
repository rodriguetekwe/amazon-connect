# Configure provider
provider "aws" {
  region = var.aws_region
}

# Include modules
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
