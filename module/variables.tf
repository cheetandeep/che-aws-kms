variable "region" {
  default     = "us-east-1"
  description = "The region in which the key needs to be created."
}

variable "key_details" {
  type        = map(any)
  description = "The description and algorithm of the key being created. Usage \"Description\" =  \"Key Algorithm\". The Key Algorithm should be one of \"SYMMETRIC_DEFAULT\", \"RSA_2048\", \"RSA_3072\", \"RSA_4096\", \"HMAC_256\", \"ECC_NIST_P256\", \"ECC_NIST_P384\", \"ECC_NIST_P521\", or \"ECC_SECG_P256K1\". Defaults to SYMMETRIC_DEFAULT."
}

variable "account" {
  type        = string
  description = "The account in which the key is being created."
}

variable "enabled" {
  type        = bool
  description = "Specifies whether the key is enabled. Defaults to true."
  default     = true
}

variable "rotation_enabled" {
  type        = bool
  description = "Specifies whether key rotation is enabled. Defaults to false."
  validation {
    condition = contains([
      true,
      false
    ], var.rotation_enabled)
    error_message = "The value must be either true or false."
  }
}

variable "team_name" {
  type        = string
  description = "The name of the team for which this key is being created."
  validation {
    condition = contains([
      "team1",
      "team2",
    "team3"], var.team_name)
    error_message = "The value must support from the mentioned list."
  }
}

# variable "kms_alias" {
#   type    = string
#   default = "test"
# }

variable "key_usage" {
  description = "Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT or SIGN_VERIFY. Defaults to ENCRYPT_DECRYPT."
  validation {
    condition = contains([
      "ENCRYPT_DECRYPT",
    "SIGN_VERIFY"], var.key_usage)
    error_message = "The value must support from the mentioned list."
  }
}

variable "environment" {
  description = "The environment for which the key is being created."
  type        = string
  validation {
    condition = contains([
      "prod",
    "dev"], var.environment)
    error_message = "The value must support from the mentioned list."
  }
}
