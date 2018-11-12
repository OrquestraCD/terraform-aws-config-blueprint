terraform {
  version = ">=0.11.8"
}

provider "aws" {}

provider "aws" {
  alias   = "cross-account"
  profile = "cross-account"
}
