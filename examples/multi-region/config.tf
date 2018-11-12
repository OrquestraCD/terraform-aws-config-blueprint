module "config" {
  source = "../../"

  name                 = "${local.name}"
  common_tags          = "${local.common_tags}"
  delivery_frequency   = "${local.delivery_frequency}"
  bucket_force_destroy = "${local.bucket_force_destroy}"

  enable_extra_regions = {
    region_0 = true
    region_1 = true
  }

  providers = {
    aws.region_0 = "aws.sa_east_1"
    aws.region_1 = "aws.us_west_1"
  }
}
