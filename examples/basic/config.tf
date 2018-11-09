module "config" {
  source = "../../"

  name        = "${local.name}"
  common_tags = "${local.common_tags}"
}
