module "aggregations" {
  source = "modules/aggregations"

  providers = {
    aws.region_0  = "aws.region_0"
    aws.region_1  = "aws.region_1"
    aws.region_2  = "aws.region_2"
    aws.region_3  = "aws.region_3"
    aws.region_4  = "aws.region_4"
    aws.region_5  = "aws.region_5"
    aws.region_6  = "aws.region_6"
    aws.region_7  = "aws.region_7"
    aws.region_8  = "aws.region_8"
    aws.region_9  = "aws.region_9"
    aws.region_10 = "aws.region_10"
    aws.region_11 = "aws.region_11"
    aws.region_12 = "aws.region_12"
    aws.region_13 = "aws.region_13"
  }

  name                 = "${var.name}"
  account_id           = "${data.aws_caller_identity.this.account_id}"
  enabled              = "${var.enabled}"
  enable_extra_regions = "${var.enable_extra_regions}"
}
