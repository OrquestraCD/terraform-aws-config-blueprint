locals {
  name_prefix          = "disable-config"
  name                 = "${local.name_prefix}-${local.common_tags["Environment"]}"
  bucket_force_destroy = true
  enabled              = false

  common_tags = {
    Environment = "tst"
  }
}
