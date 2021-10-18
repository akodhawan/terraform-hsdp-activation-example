data "hsdp_iam_org" "org" {
  organization_id = var.iam_org_id
}

data "hsdp_iam_users" "unverified" {
  organization_id = hsdp_iam_org.mfa.id

  email_verified = false
  disabled       = true
}

data "terraform_remote_state" "local" {
  backend = "local"

  defaults = {
    unverified_user_ids = []
  }
}
