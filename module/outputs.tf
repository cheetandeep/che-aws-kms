output "key_details" {
  description = "The details of the keys being created."
  value       = aws_kms_key.example_kms_key.*
}

output "key_alias_details" {
  description = "The key alias details."
  value       = aws_kms_alias.example_kms_alias.*
}

output "aws_iam_policy_document" {
  description = "Key policy being created and attached to the key to grant user access."
  value       = data.aws_iam_policy_document.key_policy.json
}

output "account_name" {
  description = "AWS account ID in which the key is being created."
  value       = local.ids[0].id
}
