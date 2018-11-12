module "config" {
  source = "../../"

  name                 = "${local.name}"
  common_tags          = "${local.common_tags}"
  bucket_force_destroy = "${local.bucket_force_destroy}"
  auto_create_bucket   = "${local.auto_create_bucket}"
  custom_bucket_name   = "${module.log_bucket.bucket["id"]}"
}
