output "settings" {
  description = "The AWS Config settings for the account"

  value = {
    region              = "${join("", data.aws_region.this_config_region.*.name)}"
    recorder_id         = "${join("", aws_config_configuration_recorder.this.*.id)}"
    delivery_channel_id = "${join("", aws_config_delivery_channel.this.*.id)}"
  }
}
