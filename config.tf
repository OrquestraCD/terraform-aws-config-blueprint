module "config_us_east_1" {
  source = "modules/config"

  name               = "${var.name}"
  enabled            = "${var.enabled}"
  iam_role_arn       = "${module.iam.role["arn"]}"
  recording_group    = "${var.recording_group}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}
