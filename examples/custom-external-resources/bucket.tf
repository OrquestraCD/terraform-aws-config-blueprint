module "log_bucket" {
  source = "github.com/pro-terraform-blueprints/terraform-aws-log-bucket-blueprint?ref=0.0.2"

  name                             = "${local.bucket_name}"
  common_tags                      = "${local.common_tags}"
  region                           = "us-east-1"
  force_destroy                    = "${local.bucket_force_destroy}"
  server_side_encryption_algorithm = "${local.server_side_encryption_algorithm}"
}
