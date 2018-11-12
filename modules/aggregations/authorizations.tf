resource "aws_config_aggregate_authorization" "this_region_0" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_0.name}"

  count = "${local.region_0_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_1" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_1.name}"

  count = "${local.region_1_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_2" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_2.name}"

  count = "${local.region_2_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_3" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_3.name}"

  count = "${local.region_3_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_4" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_4.name}"

  count = "${local.region_4_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_5" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_5.name}"

  count = "${local.region_5_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_6" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_6.name}"

  count = "${local.region_6_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_7" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_7.name}"

  count = "${local.region_7_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_8" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_8.name}"

  count = "${local.region_8_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_9" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_9.name}"

  count = "${local.region_9_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_10" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_10.name}"

  count = "${local.region_10_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_11" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_11.name}"

  count = "${local.region_11_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_12" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_12.name}"

  count = "${local.region_12_enabled}"
}

resource "aws_config_aggregate_authorization" "this_region_13" {
  account_id = "${var.account_id}"
  region     = "${data.aws_region.this_region_13.name}"

  count = "${local.region_13_enabled}"
}
