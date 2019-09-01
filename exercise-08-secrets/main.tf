provider "vault" {}

provider "aws" {
  region = "${var.aws_region}"
}
