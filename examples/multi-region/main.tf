terraform {
  version = ">=0.11.8"
}

provider "aws" {}

provider "aws" {
  alias  = "sa_east_1"
  region = "sa-east-1"
}

provider "aws" {
  alias  = "us_west_1"
  region = "us-west-1"
}
