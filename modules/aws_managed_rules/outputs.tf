output "rules_arn" {
  description = "A list of rules ARN created"
  value       = ["${aws_config_config_rule.this.*.arn}"]
}
