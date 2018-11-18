resource "aws_config_configuration_recorder" "this" {
  name     = "${var.name}"
  role_arn = "${var.iam_role_arn}"

  recording_group {
    all_supported                 = true
    include_global_resource_types = "${var.include_global_resource_types}"
  }

  count = "${var.enabled ? 1 : 0}"
}

resource "aws_config_delivery_channel" "this" {
  depends_on = ["aws_config_configuration_recorder.this"]

  name           = "${var.name}"
  s3_bucket_name = "${var.s3_bucket_name}"

  snapshot_delivery_properties = {
    delivery_frequency = "${var.delivery_frequency}"
  }

  count = "${var.enabled ? 1 : 0}"
}

resource "aws_config_configuration_recorder_status" "this" {
  depends_on = ["aws_config_delivery_channel.this"]

  name       = "${aws_config_configuration_recorder.this.name}"
  is_enabled = true

  count = "${var.enabled ? 1 : 0}"
}

resource "null_resource" "this_retention" {
  depends_on = ["aws_config_configuration_recorder.this"]

  provisioner "local-exec" {
    command = "aws configservice --region '${data.aws_region.this_config_region.name}' put-retention-configuration --retention-period-in-days ${var.retention_period_in_days}"
  }

  count = "${var.enabled ? 1 : 0}"
}
