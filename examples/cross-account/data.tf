data "aws_caller_identity" "cross_account" {
  provider = "aws.cross-account"
}

locals {
  name_prefix                          = "cross-account-config"
  name                                 = "${local.name_prefix}-${local.common_tags["Environment"]}"
  bucket_force_destroy                 = true
  cross_account_auto_create_bucket     = false
  cross_account_auto_create_aggregator = false
  cross_account_auto_create_iam_role   = false

  common_tags = {
    Environment = "tst"
  }
}
