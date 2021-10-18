resource "hsdp_iam_org" "mfa" {
  name        = "MFATF"
  description = "Test ORG for MFA"

  parent_org_id = data.hsdp_iam_org.org.id
}

resource "hsdp_iam_user" "mfa" {
  organization_id = hsdp_iam_org.mfa.id

  login      = var.test_login
  email      = var.test_email
  first_name = "Test"
  last_name  = "MFA"

  preferred_communication_channel = "email"
}

resource "hsdp_iam_activation_email" "active" {
  for_each = toset(data.terraform_remote_state.local.outputs.unverified_user_ids)

  user_id = each.key

  resend_every = 168
}
