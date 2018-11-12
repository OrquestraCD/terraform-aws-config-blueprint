terraform {
  version = ">=0.11.8"
}

provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "sa_east_1"
  region = "sa-east-1"
}
