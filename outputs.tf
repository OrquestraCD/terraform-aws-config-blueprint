output "settings" {
  description = "The AWS Config settings for the account"
  value       = "${module.config_us_east_1.settings}"
}

output "log_bucket" {
  description = "The S3 log bucket attributes used by Config to store logs"
  value       = "${module.log_bucket.bucket}"
}

output "iam_role" {
  description = "The IAM role attributes associate with the Config"
  value       = "${module.iam.role}"
}
