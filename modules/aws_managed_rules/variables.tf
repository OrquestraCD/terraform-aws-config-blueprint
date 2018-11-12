variable "name" {
  type        = "string"
  description = "A human readable label to name and tag AWS resources"
}

variable "name_separator" {
  type        = "string"
  description = "A separator for suffixes and preffixes on resources name and Name tags"
  default     = "-"
}

variable "enabled" {
  type        = "string"
  description = "If the resources must be created"
  default     = true
}

variable "enabled_aws_rules_count" {
  type        = "string"
  description = "How many rules will be activated"
  default     = 0
}

variable "enabled_aws_rules" {
  type        = "list"
  description = "A list of objects containing the data to activate the rules"
  default     = []
}

variable "configuration_recorder" {
  type        = "string"
  description = "The configuration recorder id which the rules are based on"
}
