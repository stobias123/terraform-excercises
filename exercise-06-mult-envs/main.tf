# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY TWO MICROSERVICES: FRONTEND AND BACKEND
# ---------------------------------------------------------------------------------------------------------------------

provider "aws" {
  region = "${var.aws_region[terraform.workspace]}"
}