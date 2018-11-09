resource "aws_config_configuration_recorder" "this" {
  name            = "${var.name}"
  role_arn        = "${var.iam_role_arn}"
  recording_group = ["${var.recording_group}"]
}

resource "aws_config_delivery_channel" "this" {
  depends_on = ["aws_config_configuration_recorder.this"]

  name           = "${var.name}"
  s3_bucket_name = "${var.s3_bucket_name}"

  snapshot_delivery_properties = {
    delivery_frequency = "${var.delivery_frequency}"
  }
}

resource "aws_config_configuration_recorder_status" "this" {
  depends_on = ["aws_config_delivery_channel.this"]

  name       = "${aws_config_configuration_recorder.this.name}"
  is_enabled = true
}
