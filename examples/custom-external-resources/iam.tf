module "iam" {
  source = "github.com/pro-terraform-blueprints/terraform-aws-iam-role-blueprint//modules/config-iam-role?ref=0.1.1"

  name_prefix    = "${local.name}"
  description    = "AWS Config role to retrieve resources data and store logs on S3 Bucket"
  log_bucket_arn = "${module.log_bucket.bucket["arn"]}"
}
