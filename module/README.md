<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.example_kms_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.1/docs/resources/kms_alias) | resource |
| [aws_kms_key.example_kms_key](https://registry.terraform.io/providers/hashicorp/aws/4.20.1/docs/resources/kms_key) | resource |
| [aws_iam_policy_document.key_policy](https://registry.terraform.io/providers/hashicorp/aws/4.20.1/docs/data-sources/iam_policy_document) | data source |
| [aws_organizations_organization.org_che](https://registry.terraform.io/providers/hashicorp/aws/4.20.1/docs/data-sources/organizations_organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account"></a> [account](#input\_account) | The account in which the key is being created. | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Specifies whether the key is enabled. Defaults to true. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment for which the key is being created. | `string` | n/a | yes |
| <a name="input_key_details"></a> [key\_details](#input\_key\_details) | The description and algorithm of the key being created. Usage "Description" =  "Key Algorithm". The Key Algorithm should be one of "SYMMETRIC\_DEFAULT", "RSA\_2048", "RSA\_3072", "RSA\_4096", "HMAC\_256", "ECC\_NIST\_P256", "ECC\_NIST\_P384", "ECC\_NIST\_P521", or "ECC\_SECG\_P256K1". Defaults to SYMMETRIC\_DEFAULT. | `map(any)` | n/a | yes |
| <a name="input_key_usage"></a> [key\_usage](#input\_key\_usage) | Specifies the intended use of the key. Valid values: ENCRYPT\_DECRYPT or SIGN\_VERIFY. Defaults to ENCRYPT\_DECRYPT. | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which the key needs to be created. | `string` | `"us-east-1"` | no |
| <a name="input_rotation_enabled"></a> [rotation\_enabled](#input\_rotation\_enabled) | Specifies whether key rotation is enabled. Defaults to false. | `bool` | n/a | yes |
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | The name of the team for which this key is being created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_name"></a> [account\_name](#output\_account\_name) | AWS account ID in which the key is being created. |
| <a name="output_aws_iam_policy_document"></a> [aws\_iam\_policy\_document](#output\_aws\_iam\_policy\_document) | Key policy being created and attached to the key to grant user access. |
| <a name="output_key_alias_details"></a> [key\_alias\_details](#output\_key\_alias\_details) | The key alias details. |
| <a name="output_key_details"></a> [key\_details](#output\_key\_details) | The details of the keys being created. |
<!-- END_TF_DOCS -->