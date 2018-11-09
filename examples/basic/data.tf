locals {
  name_prefix = "basic-config"
  name        = "${local.name_prefix}-${local.common_tags["Environment"]}"

  common_tags = {
    Environment = "tst"
  }
}
