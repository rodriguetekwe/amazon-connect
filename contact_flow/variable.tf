variable "contact_flow_name" {
  description = "The name of the Amazon Connect contact flow."
  default     = "InterVisionContactFlow" # Update with desired contact flow name
}

variable "contact_flow_description" {
  description = "The description of the Amazon Connect contact flow."
  default     = "Contact flow for InterVision"
}

variable "contact_flow_content" {
  description = "The content of the Amazon Connect contact flow."
  default     = <<CONTENT
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

variable "connect_instance_id" {
  description = "The ID of the Amazon Connect instance."
}
