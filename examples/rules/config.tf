module "config" {
  source = "../../"

  name                 = "${local.name}"
  common_tags          = "${local.common_tags}"
  bucket_force_destroy = "${local.bucket_force_destroy}"
}
