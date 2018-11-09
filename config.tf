resource "aws_config_configuration_recorder" "this" {
  name     = "${var.name}"
  role_arn = "${module.iam.role["arn"]}"

  recording_group {
    all_supported                 = true
    include_global_resource_types = true
  }
}

resource "aws_config_delivery_channel" "this" {
  depends_on = ["aws_config_configuration_recorder.this"]

  name           = "${var.name}"
  s3_bucket_name = "${module.log_bucket.bucket["id"]}"

  snapshot_delivery_properties = {
    delivery_frequency = "TwentyFour_Hours"
  }
}

resource "aws_config_configuration_recorder_status" "this" {
  depends_on = ["aws_config_delivery_channel.this"]

  name       = "${aws_config_configuration_recorder.this.name}"
  is_enabled = true
}
