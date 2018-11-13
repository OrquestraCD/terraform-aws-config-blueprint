locals {
  region_0_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_0", false) ? 1 : 0}"
  region_1_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_1", false) ? 1 : 0}"
  region_2_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_2", false) ? 1 : 0}"
  region_3_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_3", false) ? 1 : 0}"
  region_4_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_4", false) ? 1 : 0}"
  region_5_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_5", false) ? 1 : 0}"
  region_6_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_6", false) ? 1 : 0}"
  region_7_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_7", false) ? 1 : 0}"
  region_8_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_8", false) ? 1 : 0}"
  region_9_enabled  = "${var.enabled && lookup(var.enable_extra_regions, "region_9", false) ? 1 : 0}"
  region_10_enabled = "${var.enabled && lookup(var.enable_extra_regions, "region_10", false) ? 1 : 0}"
  region_11_enabled = "${var.enabled && lookup(var.enable_extra_regions, "region_11", false) ? 1 : 0}"
  region_12_enabled = "${var.enabled && lookup(var.enable_extra_regions, "region_12", false) ? 1 : 0}"
  region_13_enabled = "${var.enabled && lookup(var.enable_extra_regions, "region_13", false) ? 1 : 0}"
  region_14_enabled = "${var.enabled && lookup(var.enable_extra_regions, "region_14", false) ? 1 : 0}"
  region_15_enabled = "${var.enabled && lookup(var.enable_extra_regions, "region_15", false) ? 1 : 0}"
}

data "aws_region" "this_region_0" {
  provider = "aws.region_0"

  count = "${local.region_0_enabled}"
}

data "aws_region" "this_region_1" {
  provider = "aws.region_1"

  count = "${local.region_1_enabled}"
}

data "aws_region" "this_region_2" {
  provider = "aws.region_2"

  count = "${local.region_2_enabled}"
}

data "aws_region" "this_region_3" {
  provider = "aws.region_3"

  count = "${local.region_3_enabled}"
}

data "aws_region" "this_region_4" {
  provider = "aws.region_4"

  count = "${local.region_4_enabled}"
}

data "aws_region" "this_region_5" {
  provider = "aws.region_5"

  count = "${local.region_5_enabled}"
}

data "aws_region" "this_region_6" {
  provider = "aws.region_6"

  count = "${local.region_6_enabled}"
}

data "aws_region" "this_region_7" {
  provider = "aws.region_7"

  count = "${local.region_7_enabled}"
}

data "aws_region" "this_region_8" {
  provider = "aws.region_8"

  count = "${local.region_8_enabled}"
}

data "aws_region" "this_region_9" {
  provider = "aws.region_9"

  count = "${local.region_9_enabled}"
}

data "aws_region" "this_region_10" {
  provider = "aws.region_10"

  count = "${local.region_10_enabled}"
}

data "aws_region" "this_region_11" {
  provider = "aws.region_11"

  count = "${local.region_11_enabled}"
}

data "aws_region" "this_region_12" {
  provider = "aws.region_12"

  count = "${local.region_12_enabled}"
}

data "aws_region" "this_region_13" {
  provider = "aws.region_13"

  count = "${local.region_13_enabled}"
}

data "aws_region" "this_region_14" {
  provider = "aws.region_14"

  count = "${local.region_14_enabled}"
}

data "aws_region" "this_region_15" {
  provider = "aws.region_15"

  count = "${local.region_15_enabled}"
}
