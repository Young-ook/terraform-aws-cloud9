### frigga name
module "frigga" {
  source  = "Young-ook/spinnaker/aws//modules/frigga"
  version = "2.3.3"
  name    = var.name == null || var.name == "" ? "c9" : var.name
  petname = var.name == null || var.name == "" ? true : false
}

locals {
  name = module.frigga.name
  default-tags = merge(
    { "terraform.io" = "managed" },
    { "Name" = local.name },
  )
}
