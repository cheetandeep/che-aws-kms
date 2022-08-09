### IAM policy data 

data "aws_iam_policy_document" "key_policy" {
  statement {
    sid    = "Enable IAM User Permissions"
    effect = "Allow"
    principals {
      type = "AWS"
      ## This role is created as part of AWS organization but doesn't exist in absence of AWS organizations being used
      # identifiers = ["arn:aws:iam::${local.ids[0].id}:role/aws-reserved/sso.amazonaws.com/AWSReservedSSO_AWSAdministratorAccess_<your_id>"]
      identifiers = ["arn:aws:iam::${local.ids[0].id}:user/<your_user_id>"]
    }
    actions = [
      "kms:*",
    ]

    resources = [
      "*",
    ]
  }
  # statement {
  #   sid    = "Allow access for Key Administrators"
  #   effect = "Allow"
  #   principals {
  #     type        = "AWS"
  #     identifiers = ["arn:aws:iam::${local.ids[0].id}:role/aws-reserved/sso.amazonaws.com/AWSReservedSSO_AWSAdministratorAccess_<your_id>", "arn:aws:iam::${local.ids[0].id}:role/aws-service-role/sso.amazonaws.com/AWSServiceRoleForSSO"]
  #   }
  #   actions = [
  #     "kms:Create*",
  #     "kms:Describe*",
  #     "kms:Enable*",
  #     "kms:List*",
  #     "kms:Put*",
  #     "kms:Update*",
  #     "kms:Get*",
  #     "kms:TagResource",
  #     "kms:UntagResource",
  #     "kms:CancelKeyDeletion",
  #     "kms:GetPublicKey",
  #     "kms:Sign",
  #     "kms:Verify",
  #   ]

  #   resources = [
  #     "*",
  #   ]
  # }
  # statement {
  #   sid    = "Allow attachment of persistent resources"
  #   effect = "Allow"
  #   principals {
  #     type        = "AWS"
  #     identifiers = ["arn:aws:iam::${local.ids[0].id}:role/aws-reserved/sso.amazonaws.com/AWSReservedSSO_AWSAdministratorAccess_<your_id>"]
  #   }
  #   actions = [
  #                 "kms:CreateGrant",
  #                 "kms:ListGrants",
  #                 "kms:RevokeGrant",
  #   ]

  #   resources = [
  #     "*",
  #   ]
  #   condition {
  #   test = "ForAnyValue:StringEquals"
  #    variable = "kms:GrantIsForAWSResource"
  #    values = ["true"]
  #   }
  # }
}
