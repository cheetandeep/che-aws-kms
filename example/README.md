## Description 

This example creates two `asymmetric` keys with two different algorithms `RSA_2048` and `RSA_4096`.

## Usage

```
module "example_aws_kms" {
  source = ".././module"
  key_details = {
    "Example1stkey" = "RSA_2048",
    "Example2ndkey" = "RSA_4096",
  }
  rotation_enabled = false
  team_name        = "sre"
  key_usage        = "SIGN_VERIFY"
  environment      = "prod"
  account          = "<your_aws_account_goes_here>"
}

```


<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_example_aws_kms"></a> [example\_aws\_kms](#module\_example\_aws\_kms) | .././module | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_name"></a> [account\_name](#output\_account\_name) | The account in which the KMS key is being created |
| <a name="output_iam_policy"></a> [iam\_policy](#output\_iam\_policy) | The key policy being attached to the keys |
| <a name="output_key_alias_names"></a> [key\_alias\_names](#output\_key\_alias\_names) | Key Alias details |
| <a name="output_key_names"></a> [key\_names](#output\_key\_names) | The name of the keys that are being created |
<!-- END_TF_DOCS -->