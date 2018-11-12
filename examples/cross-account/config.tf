module "config" {
  source = "../../"

  name                           = "${local.name}"
  common_tags                    = "${local.common_tags}"
  bucket_force_destroy           = "${local.bucket_force_destroy}"
  cross_accounts_iam_roles_arn   = ["${module.iam_cross_account.role["arn"]}"]
  extra_bucket_policy_statements = ["${module.config.cross_account_bucket_policy_statements}"]
}

module "iam_cross_account" {
  source = "github.com/pro-terraform-blueprints/terraform-aws-iam-role-blueprint//modules/config-iam-role?ref=0.1.1"

  providers = {
    aws = "aws.cross-account"
  }

  name_prefix    = "${local.name}"
  description    = "AWS Config role to retrieve resources data and store logs on cross account S3 Bucket"
  log_bucket_arn = "arn:aws:s3:::${local.name}"
}

module "cross_account_config" {
  source = "../../"

  providers = {
    aws = "aws.cross-account"
  }

  name                   = "${local.name}"
  common_tags            = "${local.common_tags}"
  auto_create_bucket     = "${local.cross_account_auto_create_bucket}"
  auto_create_aggregator = "${local.cross_account_auto_create_aggregator}"
  auto_create_iam_role   = "${local.cross_account_auto_create_iam_role}"
  custom_bucket_name     = "${module.config.log_bucket["id"]}"
  custom_iam_role_arn    = "${module.iam_cross_account.role["arn"]}"
}
