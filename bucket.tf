module "log_bucket" {
  source = "github.com/pro-terraform-blueprints/terraform-aws-log-bucket-blueprint?ref=0.0.2"

  name                             = "${local.bucket_name}"
  common_tags                      = "${var.common_tags}"
  region                           = "${join("", data.aws_region.this.*.name)}"
  enabled                          = "${var.enabled ? var.auto_create_bucket : false}"
  force_destroy                    = "${var.bucket_force_destroy}"
  server_side_encryption_algorithm = "${local.bucket_sse_algorithm}"
  logs_transitions                 = ["${var.bucket_logs_transitions}"]
  logs_expiration                  = "${var.bucket_logs_expiration}"

  # extra_policy_statements = ["${concat(
  #   local.default_policy_statements,
  #   var.extra_bucket_policy_statements
  # )}"]
}
