variable "name" {
  type        = "string"
  description = "A human readable label to name and tag AWS resources"
}

variable "name_separator" {
  type        = "string"
  description = "A separator for suffixes and preffixes on resources name and Name tags"
  default     = "-"
}

variable "common_tags" {
  type        = "map"
  description = "A map of values to be merged with Name tag and associate to resources"
  default     = {}
}

variable "enabled" {
  type        = "string"
  description = "If the resources must be created"
  default     = true
}
