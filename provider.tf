provider "hsdp" {
  region             = var.region
  environment        = var.environment
  org_admin_username = var.org_admin_username
  org_admin_password = var.org_admin_password
  oauth2_client_id   = var.iam_oauth2_client_id
  oauth2_password    = var.iam_oauth2_client_password
  shared_key         = var.iam_shared_key
  secret_key         = var.iam_secret_key
  # debug_log          = "./resend-activation.log"
}
