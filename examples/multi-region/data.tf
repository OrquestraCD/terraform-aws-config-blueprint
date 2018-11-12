locals {
  name_prefix          = "multi-region-config"
  name                 = "${local.name_prefix}-${local.common_tags["Environment"]}"
  delivery_frequency   = "One_Hour"
  bucket_force_destroy = true

  common_tags = {
    Environment = "tst"
  }
}
