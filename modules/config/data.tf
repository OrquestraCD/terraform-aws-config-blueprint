data "aws_region" "this_config_region" {
  count = "${var.enabled ? 1 : 0}"
}
