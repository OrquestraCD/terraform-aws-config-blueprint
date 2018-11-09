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

variable "auto_create_bucket" {
  type        = "string"
  description = "If true, creates the bucket log bucket and KMS key for storing CloudTrail"
  default     = true
}

variable "custom_bucket_name" {
  type        = "string"
  description = "The custom bucket name. This is necessary if auto_create_bucket is set to false"
  default     = ""
}

variable "bucket_prefix" {
  type        = "string"
  description = "A prefix to prepend on log bucket name"
  default     = ""
}

variable "bucket_suffix" {
  type        = "string"
  description = "a suffix to append on log bucket name"
  default     = ""
}

variable "bucket_force_destroy" {
  type        = "string"
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  default     = "false"
}

variable "bucket_logs_transitions" {
  type        = "list"
  description = "The storage areas transitions for current and versioned logs. By default stay in 30 days on standard storage, then send to Infrequent Access and after more 60 days send to Glacier"

  default = [
    {
      days          = 30
      storage_class = "STANDARD_IA"
    },
    {
      days          = 90
      storage_class = "GLACIER"
    },
  ]
}

variable "bucket_logs_expiration" {
  type        = "string"
  description = "The number of days to expire current and versioned logs"
  default     = 365
}

variable "extra_bucket_policy_statements" {
  type        = "list"
  description = "A list of extra bucket policies to be merged with the default one"
  default     = []
}

variable "cross_accounts_id" {
  type        = "list"
  description = "A list of account ids to allow use the log bucket and KMS key to encrypt"
  default     = []
}
