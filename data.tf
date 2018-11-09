data "aws_region" "this" {
  count = "${var.enabled ? 1 : 0}"
}

locals {
  bucket_sse_algorithm = "AES256"
  bucket_name          = "${var.bucket_prefix != "" ? "${var.bucket_prefix}${var.name_separator}" : ""}${var.name}${var.bucket_suffix != "" ? "${var.name_separator}${var.bucket_suffix}" : ""}"
}
