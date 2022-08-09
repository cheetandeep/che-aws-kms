data "aws_organizations_organization" "org_che" {}

locals {
  ids = [for account in data.aws_organizations_organization.org_che.accounts : account if account.name == "${var.account}"]
}


resource "aws_kms_key" "example_kms_key" {
  for_each                 = var.key_details
  description              = each.key
  customer_master_key_spec = each.value
  key_usage                = var.key_usage
  is_enabled               = var.enabled
  enable_key_rotation      = var.rotation_enabled
  multi_region             = (var.environment == "prod" ? true : false)

  tags = {
    Name    = var.team_name
    env     = var.environment
    account = var.account
    name    = each.key
  }
  policy = data.aws_iam_policy_document.key_policy.json
}

resource "aws_kms_alias" "example_kms_alias" {
  for_each      = var.key_details
  target_key_id = aws_kms_key.example_kms_key[each.key]["key_id"]
  name          = "alias/${each.key}"
}
