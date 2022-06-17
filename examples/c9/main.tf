provider "aws" {
  region = var.aws_region
}

# platform/ide
module "c9" {
  source = "../../"
  name   = var.name
  tags   = var.tags
}
