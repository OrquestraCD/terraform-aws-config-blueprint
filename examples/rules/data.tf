locals {
  name_prefix          = "aws-rules-config"
  name                 = "${local.name_prefix}-${local.common_tags["Environment"]}"
  bucket_force_destroy = true

  enabled_aws_rules_count = 1

  enabled_aws_rules = [
    {
      source_identifier = "CLOUD_TRAIL_ENABLED"
      name_suffix       = "cloudtrail-enabled"
      description       = "Check if CloudTrail is enabled on account"
    },
  ]

  common_tags = {
    Environment = "tst"
  }
}
