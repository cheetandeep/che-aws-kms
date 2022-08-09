output "iam_policy" {
  description = "The key policy being attached to the keys"
  value       = module.example_aws_kms.aws_iam_policy_document
}

output "account_name" {
  description = "The account in which the KMS key is being created"
  value       = module.example_aws_kms.account_name
}

# output "key_details" {
#   value = module.example_aws_kms.key_details
# }

locals {
  key_alias_name = [for name in module.example_aws_kms.key_alias_details.0 : name if name.name != ""]
}
output "key_alias_names" {
  description = "Key Alias details"
  value       = local.key_alias_name[*].name
}


locals {
  name = [for key in module.example_aws_kms.key_details.0 : key if key.description != ""]
}

output "key_names" {
  description = "The name of the keys that are being created"
  value       = local.name[*].description
}
