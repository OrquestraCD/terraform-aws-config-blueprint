variable "name" {
  type        = "string"
  description = "A human readable label to name and tag AWS resources"
}

variable "enabled" {
  type        = "string"
  description = "If the resources must be created"
}

variable "account_id" {
  type        = "string"
  description = "The current account id to allow multi region agregation"
}

variable "enable_extra_regions" {
  type        = "map"
  description = "What extra regions you need to enable. Require setting providers correctly"
}

variable "auto_create_aggregator" {
  type        = "string"
  description = "If true create an aggregator for all regions on the same account on the main region"
}
