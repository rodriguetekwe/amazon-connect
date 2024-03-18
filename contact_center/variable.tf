variable "instance_name" {
  description = "The name of the Amazon Connect instance."
  default     = "InterVisionConnectInstance" # Update with desired instance name
}

variable "instance_alias" {
  description = "The alias of the Amazon Connect instance."
  default     = "inter-vision-connect-instance" # Update with desired instance alias
}

variable "instance_description" {
  description = "The description of the Amazon Connect instance."
  default     = "Amazon Connect instance for InterVision"
}
