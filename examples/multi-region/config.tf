module "config" {
  source = "../../"

  name                 = "${local.name}"
  common_tags          = "${local.common_tags}"
  bucket_force_destroy = "${local.bucket_force_destroy}"

  enable_extra_regions = {
    region_0 = true
  }

  providers = {
    aws          = "aws.us_east_1"
    aws.region_0 = "aws.sa_east_1"
  }
}
