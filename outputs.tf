output "settings" {
  description = "The AWS Config settings for the account"

  value = {
    default_region = "${module.config.settings}"
    region_0       = "${module.config_region_0.settings}"
    region_1       = "${module.config_region_1.settings}"
    region_2       = "${module.config_region_2.settings}"
    region_3       = "${module.config_region_3.settings}"
    region_4       = "${module.config_region_4.settings}"
    region_5       = "${module.config_region_5.settings}"
    region_6       = "${module.config_region_6.settings}"
    region_7       = "${module.config_region_7.settings}"
    region_8       = "${module.config_region_8.settings}"
    region_9       = "${module.config_region_9.settings}"
    region_10      = "${module.config_region_10.settings}"
    region_11      = "${module.config_region_11.settings}"
    region_12      = "${module.config_region_12.settings}"
    region_13      = "${module.config_region_13.settings}"
    region_14      = "${module.config_region_14.settings}"
    region_15      = "${module.config_region_15.settings}"
  }
}

output "log_bucket" {
  description = "The S3 log bucket attributes used by Config to store logs"
  value       = "${module.log_bucket.bucket}"
}

output "iam_role" {
  description = "The IAM role attributes associate with the Config"
  value       = "${module.iam.role}"
}

output "cross_account_bucket_policy_statements" {
  value = "${local.cross_account_bucket_policy_statements}"
}
