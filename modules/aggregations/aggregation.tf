resource "aws_config_configuration_aggregator" "this" {
  name = "${var.name}"

  account_aggregation_source {
    account_ids = ["${var.account_id}"]
    all_regions = true
  }

  count = "${var.enabled ? (var.auto_create_aggregator ? 1 : 0) : 0}"
}
