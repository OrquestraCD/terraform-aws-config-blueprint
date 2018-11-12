locals {
  name_prefix                      = "custom-resources-config"
  name                             = "${local.name_prefix}-${local.common_tags["Environment"]}"
  bucket_name                      = "${local.name}"
  bucket_force_destroy             = true
  server_side_encryption_algorithm = "AES256"
  auto_create_bucket               = false
  auto_create_iam_role             = false

  common_tags = {
    Environment = "tst"
  }
}
