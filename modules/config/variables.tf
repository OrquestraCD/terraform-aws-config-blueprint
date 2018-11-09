variable "name" {
  type        = "string"
  description = "A human readable label to name and tag AWS resources"
}

variable "enabled" {
  type        = "string"
  description = "If the resources must be created"
  default     = true
}

variable "iam_role_arn" {
  type        = "string"
  description = "The IAM Role for the AWS Config to assume"
}

variable "recording_group" {
  type        = "map"
  description = "What type of resources Config must track"
}

variable "delivery_frequency" {
  type        = "string"
  description = "The frequency with which AWS Config recurringly delivers configuration snapshots"
}

variable "s3_bucket_name" {
  type        = "string"
  description = "The bucket name to store the configuration snapshots"
}
