module "config" {
  source = "../../"

  name                           = "${local.name}"
  common_tags                    = "${local.common_tags}"
  bucket_force_destroy           = "${local.bucket_force_destroy}"
  cross_accounts_id              = ["${data.aws_caller_identity.cross_account.account_id}"]
  extra_bucket_policy_statements = ["${module.config.cross_account_bucket_policy_statements}"]
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
  custom_bucket_name     = "${module.config.log_bucket["id"]}"
}
