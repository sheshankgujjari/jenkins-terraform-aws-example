terraform {
  backend "s3" {
    bucket = "rightdata-tfstate"
    key    = "poc/jenkins-terraform-aws-example"
    region = "us-east-1"
    profile = "157557265942/sheshank"
  }
}

provider "aws" {
 region = "us-east-1"
} 

locals {
  metadata = {
    module  = basename(path.module)
  }
}

resource "aws_ssm_parameter" "this" {
  for_each = var.parameters

  name            = try(each.value.name, null)
  type            = try(each.value.type, null)
  value           = try(each.value.value, null)
  tier            = try(each.value.tier, null)
  description     = try(each.value.description, null)
  key_id          = try(each.value.key_id, null)
  overwrite       = try(each.value.overwrite, null)
  allowed_pattern = try(each.value.allowed_pattern, null)
}