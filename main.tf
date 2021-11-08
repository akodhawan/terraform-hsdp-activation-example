resource "hsdp_iam_activation_email" "active" {
  for_each = toset(flatten(data.hsdp_iam_users.unverified.*.logins)) //toset(data.terraform_remote_state.local.outputs.unverified_user_ids)
  user_id = each.key
  resend_every = 1
}
