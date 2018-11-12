module "rules" {
  source = "../../modules/aws_managed_rules"

  name                    = "${local.name}"
  enabled_aws_rules_count = "${local.enabled_aws_rules_count}"
  enabled_aws_rules       = ["${local.enabled_aws_rules}"]
  configuration_recorder  = "${lookup(module.config.settings["default_region"], "recorder_id")}"
}
