module "config" {
  source = "modules/config"

  name                          = "${var.name}"
  enabled                       = "${var.enabled}"
  iam_role_arn                  = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency            = "${var.delivery_frequency}"
  s3_bucket_name                = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
  include_global_resource_types = true
}

module "config_region_0" {
  source = "modules/config"

  providers = {
    aws = "aws.region_0"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_0", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_1" {
  source = "modules/config"

  providers = {
    aws = "aws.region_1"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_1", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_2" {
  source = "modules/config"

  providers = {
    aws = "aws.region_2"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_2", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_3" {
  source = "modules/config"

  providers = {
    aws = "aws.region_3"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_3", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_4" {
  source = "modules/config"

  providers = {
    aws = "aws.region_4"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_4", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_5" {
  source = "modules/config"

  providers = {
    aws = "aws.region_5"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_5", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_6" {
  source = "modules/config"

  providers = {
    aws = "aws.region_6"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_6", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_7" {
  source = "modules/config"

  providers = {
    aws = "aws.region_7"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_7", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_8" {
  source = "modules/config"

  providers = {
    aws = "aws.region_8"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_8", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_9" {
  source = "modules/config"

  providers = {
    aws = "aws.region_9"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_9", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_10" {
  source = "modules/config"

  providers = {
    aws = "aws.region_10"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_10", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_11" {
  source = "modules/config"

  providers = {
    aws = "aws.region_11"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_11", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_12" {
  source = "modules/config"

  providers = {
    aws = "aws.region_12"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_12", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_13" {
  source = "modules/config"

  providers = {
    aws = "aws.region_13"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_13", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_14" {
  source = "modules/config"

  providers = {
    aws = "aws.region_14"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_14", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}

module "config_region_15" {
  source = "modules/config"

  providers = {
    aws = "aws.region_15"
  }

  name               = "${var.name}"
  enabled            = "${var.enabled ? lookup(var.enable_extra_regions, "region_15", false) : false}"
  iam_role_arn       = "${var.auto_create_iam_role ? module.iam.role["arn"] : var.custom_iam_role_arn}"
  delivery_frequency = "${var.delivery_frequency}"
  s3_bucket_name     = "${var.auto_create_bucket ? module.log_bucket.bucket["id"] : var.custom_bucket_name}"
}
