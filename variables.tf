variable "region" {
  type        = string
  description = "HSDP region"
  default     = "us-east"
}
variable "environment" {
  type        = string
  description = "HSDP environemnt"
  default     = "client-test"
}

variable "iam_org_id" {
  type        = list(string)
  description = "IAM Org ID"
  default = []
}

variable "iam_shared_key" {
  type        = string
  description = "HSDP signing key"
}

variable "iam_secret_key" {
  type        = string
  description = "HSDP signing secret"
}

variable "org_admin_username" {
  type        = string
  description = "IAM Org admin username"
}

variable "org_admin_password" {
  type        = string
  description = "IAM Org admin password"
}
variable "iam_oauth2_client_id" {
  type        = string
  description = "IAM Oauth2 client id"
}
variable "iam_oauth2_client_password" {
  type        = string
  description = "IAM Oauth2 client password"
}
