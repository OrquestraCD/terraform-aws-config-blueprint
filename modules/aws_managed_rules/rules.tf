resource "null_resource" "dependency" {
  provisioner "local-exec" {
    command = "echo '${var.configuration_recorder}' > /dev/null"
  }
}

resource "aws_config_config_rule" "this" {
  depends_on = ["null_resource.dependency"]

  source {
    owner             = "AWS"
    source_identifier = "${lookup(var.enabled_aws_rules[count.index], "source_identifier")}"
  }

  name                        = "${var.name}${var.name_separator}${lookup(var.enabled_aws_rules[count.index], "name_suffix")}"
  description                 = "${lookup(var.enabled_aws_rules[count.index], "description")}"
  input_parameters            = "${lookup(var.enabled_aws_rules[count.index], "input_parameters", "{}")}"
  maximum_execution_frequency = "${lookup(var.enabled_aws_rules[count.index], "maximum_execution_frequency", "One_Hour")}"

  count = "${var.enabled ? var.enabled_aws_rules_count : 0}"
}
