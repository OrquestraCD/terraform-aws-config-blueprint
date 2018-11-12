data "aws_caller_identity" "this" {
  count = "${var.enabled ? 1 : 0}"
}

data "aws_region" "this" {
  count = "${var.enabled ? 1 : 0}"
}

locals {
  bucket_sse_algorithm = "AES256"
  bucket_name          = "${var.bucket_prefix != "" ? "${var.bucket_prefix}${var.name_separator}" : ""}${var.name}${var.bucket_suffix != "" ? "${var.name_separator}${var.bucket_suffix}" : ""}"
  bucket_arn           = "arn:aws:s3:::${local.bucket_name}"
  custom_bucket_arn    = "arn:aws:s3:::${var.custom_bucket_name}"

  cross_account_objects_arn = ["${formatlist(
    "${var.auto_create_bucket ? local.bucket_arn : local.custom_bucket_arn}/AWSLogs/%s/*",
    var.cross_accounts_id
  )}"]

  cross_account_bucket_policy_statements = [
    {
      sid       = "AWSConfigCrossAccountBucketAcl"
      effect    = "Allow"
      actions   = ["s3:GetBucketAcl"]
      resources = ["${var.auto_create_bucket ? local.bucket_arn : local.custom_bucket_arn}"]

      principals = [
        {
          type        = "Service"
          identifiers = ["config.amazonaws.com"]
        },
      ]
    },
    {
      sid       = "AWSConfigCrossAccountWrite"
      effect    = "Allow"
      actions   = ["s3:PutObject"]
      resources = ["${local.cross_account_objects_arn}"]

      principals = [
        {
          type        = "Service"
          identifiers = ["config.amazonaws.com"]
        },
      ]
    },
  ]
}
