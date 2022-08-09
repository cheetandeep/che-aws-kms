module "example_aws_kms" {
  source = ".././module"
  key_details = {
    "Example1stkey" = "RSA_2048",
    "Example2ndkey" = "RSA_4096",
  }
  rotation_enabled = false
  team_name        = "team1"
  key_usage        = "SIGN_VERIFY"
  environment      = "prod"
  account          = "<your_aws_account_goes_here>"
}
