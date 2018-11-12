locals {
  name_prefix          = "multi-region-config"
  name                 = "${local.name_prefix}-${local.common_tags["Environment"]}"
  bucket_force_destroy = true

  common_tags = {
    Environment = "tst"
  }
}
